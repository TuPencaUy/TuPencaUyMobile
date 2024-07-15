using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class SelectSitePage : ContentPage
{
    private readonly SelectSiteViewModel _selectSiteViewModel;

    public SelectSitePage(SelectSiteViewModel selectSiteViewModel)
    {
        InitializeComponent();
        _selectSiteViewModel = selectSiteViewModel;
        BindingContext = _selectSiteViewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        var siteUrl = await SecureStorage.GetAsync("SITE_URL");
        var sessionData =
            JsonConvert.DeserializeObject<SessionData>(await SecureStorage.GetAsync("SESSION") ??
                                                       string.Empty);

        if (siteUrl != null && sessionData != null && sessionData.Expiration > DateTime.Now.AddMinutes(15))
        {
            await _selectSiteViewModel.GoToEventPage();
        }
    }
}