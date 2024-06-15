namespace TuPencaUy.Models;

public class Role(int id, string name, List<string> permissions)
{
    public int Id { get; set; } = id;
    public string Name { get; set; } = name;
    public List<string> permissions { get; set; } = permissions;
}