namespace TuPencaUy.Services;

public interface IBaseService
{
    public Task<T?> GeneratePostRequest<T>(string siteUrl, string requestUri, dynamic requestData);
}