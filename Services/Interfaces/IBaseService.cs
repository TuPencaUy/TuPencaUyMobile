namespace TuPencaUy.Services.Interfaces;

public interface IBaseService
{
    public Task<T?> GenerateGetRequest<T>(string siteUrl, string requestUri, string? token);
    public Task<T?> GeneratePatchRequest<T>(string siteUrl, string requestUri, string? token, dynamic requestData);
    public Task<T?> GeneratePostRequest<T>(string siteUrl, string requestUri, string? token, dynamic requestData);
}