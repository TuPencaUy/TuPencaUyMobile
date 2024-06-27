using Auth0.OidcClient;
using Newtonsoft.Json;
using TuPencaUy.Models;

namespace TuPencaUy.Services;

public class SessionService(Auth0Client auth0Client) : BaseService, ISessionService
{
    public async Task<ApiResponse<SessionData>?> Login(string siteUrl, string email, string password)
    {
        const string requestUri = "Identity/BasicLogin";
        var loginRequest = new { Email = email, Password = password };
        
        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, loginRequest);
    }

    public async Task<ApiResponse<SessionData>?> LoginAuth0(string siteUrl)
    {
        var loginResult = await auth0Client.LoginAsync();
        var identityToken = loginResult.TokenResponse.IdentityToken;
        
        const string  requestUri = "Identity/OAuthLogin";

        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, identityToken);
    }

    
    public async Task<ApiResponse<SessionData>?> Signup(string siteUrl, string name, string email, string password)
    {
        const string  requestUri = "Identity/BasicSignup";
        var registerRequest = new {  Name = name, Email = email, Password = password };

        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, registerRequest);
    }

    public async Task Logout()
    {
        await auth0Client.LogoutAsync();
        SecureStorage.RemoveAll();
    }
    
    public async void SaveSession(SessionData sessionData)
    {
        var sessionJson = JsonConvert.SerializeObject(sessionData);
        await SecureStorage.SetAsync("SESSION", sessionJson);
    }
}