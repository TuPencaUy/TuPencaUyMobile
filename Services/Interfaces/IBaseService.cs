namespace TuPencaUy.Services.Interfaces;

public interface IBaseService
{
    public Task<T?> GenerateGetRequest<T>(string siteUrl, string requestUri, string? token, bool hasCurrentTenant);

    public Task<T?> GeneratePatchRequest<T>(string siteUrl, string requestUri, string? token, dynamic requestData,
        bool hasCurrentTenant);

    public Task<T?> GeneratePostRequest<T>(string siteUrl, string requestUri, string? token, dynamic requestData,
        bool hasCurrentTenant);
}