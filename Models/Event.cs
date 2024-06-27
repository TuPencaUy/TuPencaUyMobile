namespace TuPencaUy.Models;

public class Event(List<Match> matches, string name, DateTime startDate, DateTime endDate)
{
    public string Name { get; set; } = name;
    public DateTime StartDate { get; set; } = startDate;
    public DateTime EndDate { get; set; } = endDate;
    public List<Match> Matches { get; set; } = matches;
}