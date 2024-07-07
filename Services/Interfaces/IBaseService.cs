namespace TuPencaUy.Services.Interfaces;

public interface IBaseService
{
    public Task<T?> GeneratePostRequest<T>(string siteUrl, string requestUri, dynamic requestData);
    public Task<T?> GenerateGetRequest<T>(string siteUrl, string requestUri);
}