namespace TuPencaUy.Models;

public class Match(Sport sport, Team localTeam, Team guestTeam)
{
    private Sport Sport { get; set; } = sport;
    private Team FirstTeam { get; set; } = localTeam;
    private Team SecondTeam { get; set; } = guestTeam;
}