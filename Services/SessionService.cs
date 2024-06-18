using System.Text;
using System.Text.RegularExpressions;
using Auth0.OidcClient;
using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.Views;

namespace TuPencaUy.Services;

public partial class SessionService : ISessionService
{
    private readonly HttpClient _httpClient;
    private readonly Auth0Client _auth0Client;
    
    public SessionService(Auth0Client auth0Client)
    {
        _httpClient = new HttpClient();
        _httpClient.BaseAddress = new Uri("http://10.0.2.2:5045");
        _auth0Client = auth0Client;
    }

    
    [GeneratedRegex(@"https://(.*?).tupenca.uy/")]
    private static partial Regex MyRegex();
    private static string GetDomain(string url)
    {
        Console.WriteLine(url);
        Console.WriteLine(MyRegex().Match(url).Groups[1].Value);
        return MyRegex().Match(url).Groups[1].Value;
    }
    
    private async Task<T?> GenerateRequest<T>(string siteUrl, string requestUri, dynamic requestData)
    {
        var content = new StringContent(JsonConvert.SerializeObject(requestData), Encoding.UTF8, "application/json");
        
        _httpClient.DefaultRequestHeaders.Remove("currentTenant");
        _httpClient.DefaultRequestHeaders.Add("currentTenant", GetDomain(siteUrl));
        var response = await _httpClient.PostAsync(requestUri, content);

        var responseContent = await response.Content.ReadAsStringAsync();
        
        return JsonConvert.DeserializeObject<T>(responseContent);
    }
    
    public async Task<ApiResponse<SessionData<User>>?> Login(string siteUrl, string email, string password)
    {
        const string requestUri = "Identity/BasicLogin";
        var loginRequest = new { Email = email, Password = password };
        
        return await GenerateRequest<ApiResponse<SessionData<User>>>(siteUrl, requestUri, loginRequest);
    }

    public async Task<ApiResponse<SessionData<User>>?> LoginAuth0(string siteUrl)
    {
        var loginResult = await _auth0Client.LoginAsync();
        var identityToken = loginResult.TokenResponse.IdentityToken;
        
        const string  requestUri = "Identity/OAuthLogin";

        return await GenerateRequest<ApiResponse<SessionData<User>>>(siteUrl, requestUri, identityToken);
    }

    
    public async Task<ApiResponse<SessionData<User>>?> Signup(string siteUrl, string name, string email, string password)
    {
        const string  requestUri = "Identity/BasicSignup";
        var registerRequest = new {  Name = name, Email = email, Password = password };

        return await GenerateRequest<ApiResponse<SessionData<User>>>(siteUrl, requestUri, registerRequest);
    }

    public async Task Logout()
    {
        await _auth0Client.LogoutAsync();
        SecureStorage.RemoveAll();
    }
    
    public async void SaveSession(SessionData<User> sessionData)
    {
        var sessionJson = JsonConvert.SerializeObject(sessionData);
        await SecureStorage.SetAsync("SESSION", sessionJson);
    }
}