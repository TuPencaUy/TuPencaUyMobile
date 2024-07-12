namespace TuPencaUy.Models;

public class Match(
    int id,
    Team firstTeam,
    Team secondTeam,
    int firstTeamScore,
    int secondTeamScore,
    Sport sport,
    DateTime date)
{
    public int Id { get; set; } = id;
    public Team FirstTeam { get; set; } = firstTeam;
    public Team SecondTeam { get; set; } = secondTeam;
    public int FirstTeamScore { get; set; } = firstTeamScore;
    public int SecondTeamScore { get; set; } = secondTeamScore;
    public Sport Sport { get; set; } = sport;
    public DateTime Date { get; set; } = date;

    public Bet? Bet { get; set; }
    public bool isEnabled => Date.AddHours(-1.5) >= DateTime.Now;
}