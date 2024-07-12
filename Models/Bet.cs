namespace TuPencaUy.Models;

public class Bet(Match match, int scoreFirstTeam, int scoreSecondTeam)
{
    public Match Match { get; set; } = match;
    public int ScoreFirstTeam { get; set; } = scoreFirstTeam;
    public int ScoreSecondTeam { get; set; } = scoreSecondTeam;
}