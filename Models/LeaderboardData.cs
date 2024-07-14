namespace TuPencaUy.Models;

public class LeaderboardData(List<Participant> leaderboard)
{
    public List<Participant> Leaderboard { get; } = leaderboard;
}