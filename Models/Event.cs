namespace TuPencaUy.Models;

public class Event(int id, string name, DateTime startDate, DateTime endDate, List<Match> matches)
{
    public int Id { get; set; } = id;
    public string Name { get; set; } = name;
    public DateTime StartDate { get; set; } = startDate;
    public DateTime EndDate { get; set; } = endDate;
    public List<Match> Matches { get; set; } = matches;
}