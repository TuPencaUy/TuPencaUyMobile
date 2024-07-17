using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.Services;

public class AnalyticsService : BaseService, IAnalyticsService
{
    private const string Uri = "analytics";

    public async Task<ApiResponse<LeaderboardData>?> GetLeaderboard(string siteUrl, string token, int eventId)
    {
        var requestUri = $"{Uri}/Leaderboard/{eventId}";

        return await GenerateGetRequest<ApiResponse<LeaderboardData>>(siteUrl, requestUri, token, true);
    }
}