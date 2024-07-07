using TuPencaUy.Models;

namespace TuPencaUy.Services.Interfaces;

public interface IMatchService
{
    public Task<ApiResponse<EventData>?> GetMatches(string siteUrl, int eventId);
}