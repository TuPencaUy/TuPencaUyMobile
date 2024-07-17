using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.Services;

public class MatchService : BaseService, IMatchService
{
    private const string Uri = "match";

    public async Task<ApiResponse<EventData>?> GetMatches(string siteUrl, string token, int eventId)
    {
        var requestUri = $"{Uri}?eventId={eventId}";

        return await GenerateGetRequest<ApiResponse<EventData>>(siteUrl, requestUri, token, true);
    }
}