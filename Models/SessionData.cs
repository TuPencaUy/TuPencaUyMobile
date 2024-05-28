namespace TuPencaUy.Models;

public class SessionData<T>(string token, DateTime expiration, T? user)
{
    public string Token { get; set; } = token;
    public DateTime Expiration { get; set; } = expiration;
    public T? user { get; set; } = user;
}