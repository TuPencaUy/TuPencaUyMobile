using TuPencaUy.Models;

namespace TuPencaUy.Services;

public interface ISessionService
{
    Task<ApiResponse<SessionData<User>>?> Login(string siteUrl, string email, string password);

    Task<ApiResponse<SessionData<User>>?> Signup(string siteUrl, string name, string email, string password);

    public void Logout();
    
    void SaveSession(SessionData<User> sessionData);
}