namespace TuPencaUy.Models;

public class User(int id, string name, string email, Role role)
{
    public int Id { get; set; } = id;
    public string Name { get; set; } = name;
    public string Email { get; set; } = email;
    public Role Role { get; set; } = role;
}