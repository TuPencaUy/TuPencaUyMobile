using TuPencaUy.Models;

namespace TuPencaUy.Services.Interfaces;

public interface IBetService
{
    public Task<ApiResponse<BetData>?> GetBet(string siteUrl, string token, int eventId, int matchId, string userEmail);

    public Task<ApiResponse<BetData>?> CreateBet(string siteUrl, string token, int eventId, int matchId,
        string userEmail, int firstTeamScore, int secondTeamScore);

    public Task<ApiResponse<BetData>?> UpdateBet(string siteUrl, string token, int eventId, int matchId,
        string userEmail, int firstTeamScore, int secondTeamScore);
}