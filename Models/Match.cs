namespace TuPencaUy.Models;

public class Match(
    int id,
    Team firstTeam,
    Team secondTeam,
    int firstTeamScore,
    int secondTeamScore,
    Sport sport,
    DateTime date,
    bool finished)
{
    public int Id { get; set; } = id;
    public Team FirstTeam { get; set; } = firstTeam;
    public Team SecondTeam { get; set; } = secondTeam;
    public int FirstTeamScore { get; set; } = firstTeamScore;
    public int SecondTeamScore { get; set; } = secondTeamScore;
    public Sport Sport { get; set; } = sport;
    public DateTime Date { get; set; } = date;
    public bool Finished { get; set; } = finished;
    public Bet? Bet { get; set; }
    public bool isEnabled => (!Finished) && (Date.AddHours(-1.5) >= DateTime.Now);
}