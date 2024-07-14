using TuPencaUy.Models;

namespace TuPencaUy.Services.Interfaces;

public interface IAnalyticsService : IBaseService
{
    public Task<ApiResponse<LeaderboardData>?> GetLeaderboard(string siteUrl, string token, int eventId);
}