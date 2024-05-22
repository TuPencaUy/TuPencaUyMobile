using TuPencaUy.Models;

namespace TuPencaUy.Services;

public interface ILoginService
{
    Task<ApiResponse<TokenResponse>> Login(string email, string password);
}