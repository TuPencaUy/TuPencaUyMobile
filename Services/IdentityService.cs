using Auth0.OidcClient;
using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.Services;

public class IdentityService(Auth0Client auth0Client) : BaseService, IIdentityService
{
    private const string Uri = "identity";

    public async Task<ApiResponse<SiteData>?> ValidateSite(string siteUrl)
    {
        var domainName = GetDomain(siteUrl);
        var requestUri = $"/site/{domainName}";
        return await GenerateGetRequest<ApiResponse<SiteData>>(siteUrl, requestUri, null, false);
    }

    public async Task<ApiResponse<SessionData>?> Login(string siteUrl, string email, string password, int accessType)
    {
        var requestUri = $"{Uri}/BasicLogin?siteAccess={accessType}";
        var payload = new { Email = email, Password = password };

        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, null, payload, true);
    }

    public async Task<ApiResponse<SessionData>?> LoginAuth0(string siteUrl, int accessType)
    {
        var loginResult = await auth0Client.LoginAsync();
        var payload = new { Token = loginResult.TokenResponse.IdentityToken, IsAllowedRegister = true };

        var requestUri = $"{Uri}/OAuthLogin?siteAccess={accessType}";

        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, null, payload, true);
    }

    public async Task<ApiResponse<SessionData>?> Signup(string siteUrl, string name, string email, string password,
        int accessType)
    {
        var requestUri = $"{Uri}/BasicSignup?siteAccess={accessType}";
        var payload = new { Name = name, Email = email, Password = password };

        return await GeneratePostRequest<ApiResponse<SessionData>>(siteUrl, requestUri, null, payload, true);
    }

    public async Task Logout()
    {
        await auth0Client.LogoutAsync();
        SecureStorage.RemoveAll();
    }

    public async Task SaveSession(SessionData sessionData, string siteUrl)
    {
        var sessionJson = JsonConvert.SerializeObject(sessionData);
        await SecureStorage.SetAsync("SESSION", sessionJson);
        await SecureStorage.SetAsync("SITE_URL", siteUrl);
    }
}