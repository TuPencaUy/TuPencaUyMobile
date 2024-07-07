using TuPencaUy.Models;

namespace TuPencaUy.Services.Interfaces;

public interface ISessionService
{
    Task<ApiResponse<SessionData>?> Login(string siteUrl, string email, string password);
    
    Task<ApiResponse<SessionData>?> LoginAuth0(string siteUrl);

    Task<ApiResponse<SessionData>?> Signup(string siteUrl, string name, string email, string password);

    public Task Logout();

    public void SaveSession(SessionData sessionData, string siteUrl);
}