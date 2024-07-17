using TuPencaUy.Models;

namespace TuPencaUy.Services.Interfaces;

public interface IIdentityService
{
    public Task<ApiResponse<SiteData>?> ValidateSite(string siteUrl);
    public Task<ApiResponse<SessionData>?> Login(string siteUrl, string email, string password, int accessType);

    public Task<ApiResponse<SessionData>?> LoginAuth0(string siteUrl, int accessType);

    public Task<ApiResponse<SessionData>?> Signup(string siteUrl, string name, string email, string password,
        int accessType);

    public Task Logout();

    public Task SaveSession(SessionData sessionData, string siteUrl);
}