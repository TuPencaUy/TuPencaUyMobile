using Newtonsoft.Json;

namespace TuPencaUy.Models;

public class SessionData(string token, DateTime expiration, User? user)
{
    public string Token { get; set; } = token;
    public DateTime Expiration { get; set; } = expiration;
    public User? user { get; set; } = user;
}