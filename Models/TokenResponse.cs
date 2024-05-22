namespace TuPencaUy.Models;

public class TokenResponse(string token, DateTime expiration)
{
    public string Token { get; set; } = token;
    public DateTime Expiration { get; set; } = expiration;
}