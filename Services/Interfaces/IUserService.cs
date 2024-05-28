using TuPencaUy.Models;

namespace TuPencaUy.Services;

public interface IUserService
{
    Task<ApiResponse<SessionData<User>>?> Login(string siteUrl, string email, string password);

    void SaveUser(User user);
}