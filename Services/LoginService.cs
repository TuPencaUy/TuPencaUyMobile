using System.Text;
using Newtonsoft.Json;
using TuPencaUy.Models;

namespace TuPencaUy.Services;

public class LoginService : ILoginService
{
    private readonly HttpClient _httpClient;

    public LoginService()
    {
        _httpClient = new HttpClient();
        _httpClient.BaseAddress = new Uri("http://10.0.2.2:5045");
    }
    
    public async Task<ApiResponse<TokenResponse>> Login(string email, string password)
    {
        var loginRequest = new { Email = email, Password = password };
        var content = new StringContent(JsonConvert.SerializeObject(loginRequest), Encoding.UTF8, "application/json");
        var response = await _httpClient.PostAsync("Identity/BasicLogin", content);

        var responseContent = await response.Content.ReadAsStringAsync();
        var loginResponse = JsonConvert.DeserializeObject<ApiResponse<TokenResponse>>(responseContent);

        return loginResponse;
    }
}