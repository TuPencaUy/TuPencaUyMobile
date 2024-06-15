using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.Views;

namespace TuPencaUy.Services;

public partial class SessionService : ISessionService
{
    private readonly HttpClient _httpClient;

    public SessionService()
    {
        _httpClient = new HttpClient();
        _httpClient.BaseAddress = new Uri("http://10.0.2.2:5045");
    }

    
    [GeneratedRegex(@"https://(.*?).tupenca.uy/")]
    private static partial Regex MyRegex();
    private static string GetDomain(string url)
    {
        Console.WriteLine(url);
        Console.WriteLine(MyRegex().Match(url).Groups[1].Value);
        return MyRegex().Match(url).Groups[1].Value;
    }
    
    public async Task<ApiResponse<SessionData<User>>?> Login(string siteUrl, string email, string password)
    {
        var loginRequest = new { Email = email, Password = password };
        var content = new StringContent(JsonConvert.SerializeObject(loginRequest), Encoding.UTF8, "application/json");

        _httpClient.DefaultRequestHeaders.Remove("currentTenant");
        _httpClient.DefaultRequestHeaders.Add("currentTenant", GetDomain(siteUrl));
        var response = await _httpClient.PostAsync("Identity/BasicLogin", content);

        var responseContent = await response.Content.ReadAsStringAsync();
        var loginResponse = JsonConvert.DeserializeObject<ApiResponse<SessionData<User>>>(responseContent);
        
        return loginResponse;
    }

    public async Task<ApiResponse<SessionData<User>>?> Signup(string siteUrl, string name, string email, string password)
    {
        var registerRequest = new {  Name = name, Email = email, Password = password };
        var content = new StringContent(JsonConvert.SerializeObject(registerRequest), Encoding.UTF8, "application/json");
        
        //TODO: Simplificar
        _httpClient.DefaultRequestHeaders.Remove("currentTenant");
        _httpClient.DefaultRequestHeaders.Add("currentTenant", GetDomain(siteUrl));
        var response = await _httpClient.PostAsync("Identity/BasicSignup", content);

        var responseContent = await response.Content.ReadAsStringAsync();
        var loginResponse = JsonConvert.DeserializeObject<ApiResponse<SessionData<User>>>(responseContent);
        
        return loginResponse;
    }

    public void Logout() => SecureStorage.RemoveAll();
    
    public async void SaveSession(SessionData<User> sessionData)
    {
        var sessionJson = JsonConvert.SerializeObject(sessionData);
        await SecureStorage.SetAsync("user", sessionJson);
    }
}