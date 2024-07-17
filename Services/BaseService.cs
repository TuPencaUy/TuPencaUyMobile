using System.Net.Http.Headers;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.Services;

public abstract partial class BaseService : IBaseService
{
    private readonly HttpClient _httpClient;

    protected BaseService()
    {
        _httpClient = new HttpClient();
        _httpClient.BaseAddress = new Uri("https://tupenca.org");
    }

    [GeneratedRegex(@"https://(.*?).tupencauy.com/")]
    private static partial Regex MyRegex();

    protected static string GetDomain(string url)
    {
        Console.WriteLine(url);
        Console.WriteLine(MyRegex().Match(url).Groups[1].Value);
        return MyRegex().Match(url).Groups[1].Value;
    }

    public async Task<T?> GenerateGetRequest<T>(string siteUrl, string requestUri, string? token, bool hasCurrentTenant)
    {
        _httpClient.DefaultRequestHeaders.Remove("currentTenant");
        if (hasCurrentTenant)
            _httpClient.DefaultRequestHeaders.Add("currentTenant", GetDomain(siteUrl));
        var response = await _httpClient.GetAsync(requestUri);

        var responseContent = await response.Content.ReadAsStringAsync();

        return JsonConvert.DeserializeObject<T>(responseContent);
    }

    public async Task<T?> GeneratePostRequest<T>(string siteUrl, string requestUri, string? token, dynamic requestData,
        bool hasCurrentTenant)
    {
        var content = new StringContent(JsonConvert.SerializeObject(requestData), Encoding.UTF8, "application/json");

        _httpClient.DefaultRequestHeaders.Remove("currentTenant");
        if (hasCurrentTenant)
            _httpClient.DefaultRequestHeaders.Add("currentTenant", GetDomain(siteUrl));
        if (token != null)
            _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
        var response = await _httpClient.PostAsync(requestUri, content);

        var responseContent = await response.Content.ReadAsStringAsync();

        return JsonConvert.DeserializeObject<T>(responseContent);
    }

    public async Task<T?> GeneratePatchRequest<T>(string siteUrl, string requestUri, string? token, dynamic requestData,
        bool hasCurrentTenant)
    {
        var content = new StringContent(JsonConvert.SerializeObject(requestData), Encoding.UTF8, "application/json");

        _httpClient.DefaultRequestHeaders.Remove("currentTenant");
        if (hasCurrentTenant)
            _httpClient.DefaultRequestHeaders.Add("currentTenant", GetDomain(siteUrl));
        if (token != null)
            _httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token);
        var response = await _httpClient.PatchAsync(requestUri, content);

        var responseContent = await response.Content.ReadAsStringAsync();

        return JsonConvert.DeserializeObject<T>(responseContent);
    }
}