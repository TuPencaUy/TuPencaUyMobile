using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.Services;

public class BetService : BaseService, IBetService
{
    private const string Uri = "bet";

    public async Task<ApiResponse<BetData>?> GetBet(string siteUrl, string token, int eventId, int matchId,
        string userEmail)
    {
        var requestUri = $"{Uri}?eventId={eventId}&matchId={matchId}&userEmail={userEmail}";

        return await GenerateGetRequest<ApiResponse<BetData>>(siteUrl, requestUri, token, true);
    }

    public async Task<ApiResponse<BetData>?> CreateBet(string siteUrl, string token, int eventId, int matchId,
        string userEmail,
        int firstTeamScore, int secondTeamScore)
    {
        const string requestUri = $"{Uri}";

        var payload = new
        {
            EventId = eventId, matchId = matchId, UserEmail = userEmail, FirstTeamScore = firstTeamScore,
            SecondTeamScore = secondTeamScore
        };

        return await GeneratePostRequest<ApiResponse<BetData>>(siteUrl, requestUri, token, payload, true);
    }

    public async Task<ApiResponse<BetData>?> UpdateBet(string siteUrl, string token, int eventId, int matchId,
        string userEmail, int firstTeamScore, int secondTeamScore)
    {
        const string requestUri = $"{Uri}";

        var payload = new
        {
            EventId = eventId, matchId = matchId, UserEmail = userEmail, FirstTeamScore = firstTeamScore,
            SecondTeamScore = secondTeamScore
        };

        return await GeneratePatchRequest<ApiResponse<BetData>>(siteUrl, requestUri, token, payload, true);
    }
}