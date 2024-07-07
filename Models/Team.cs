namespace TuPencaUy.Models;

public class Team(int id, string name, byte[]? logo)
{
    public int Id { get; set; } = id;
    public string Name { get; set; } = name;
    public byte[]? Logo { get; set; } = logo;
}