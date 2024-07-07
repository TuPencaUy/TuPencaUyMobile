using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;
using Task = Android.Gms.Tasks.Task;

namespace TuPencaUy.Services;

public class MatchService : BaseService, IMatchService
{
    public async Task<ApiResponse<EventData>?> GetMatches(string siteUrl, int eventId)
    {
        var requestUri = $"match?eventId={eventId}";

        return await GenerateGetRequest<ApiResponse<EventData>>(siteUrl, requestUri);
    }
}