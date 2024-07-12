using Auth0.OidcClient;
using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.Services;

public class SessionService(Auth0Client auth0Client) : BaseService, ISessionService
{
    private const string Uri = "identity";
    public async Task<ApiResponse<SessionData>?> Login(string siteUrl, string email, string password)
    {
        const string requestUri = $"{Uri}/BasicLogin";
        var payload = new { Email = email, Password = password };
        
        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, null, payload);
    }

    public async Task<ApiResponse<SessionData>?> LoginAuth0(string siteUrl)
    {
        var loginResult = await auth0Client.LoginAsync();
        var payload = loginResult.TokenResponse.IdentityToken;
        
        const string  requestUri = $"{Uri}/OAuthLogin";

        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, null, payload);
    }

    
    public async Task<ApiResponse<SessionData>?> Signup(string siteUrl, string name, string email, string password)
    {
        const string  requestUri = $"{Uri}/BasicSignup";
        var payload = new {  Name = name, Email = email, Password = password };

        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, null, payload);
    }

    public async Task Logout()
    {
        await auth0Client.LogoutAsync();
        SecureStorage.RemoveAll();
    }
    
    public async void SaveSession(SessionData sessionData, string siteUrl)
    {
        var sessionJson = JsonConvert.SerializeObject(sessionData);
        await SecureStorage.SetAsync("SESSION", sessionJson);
        await SecureStorage.SetAsync("SITE_URL", siteUrl);
    }
}