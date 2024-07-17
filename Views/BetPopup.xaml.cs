using CommunityToolkit.Maui.Views;
using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class BetPopup : Popup
{
    private readonly BetViewModel _betViewModel;

    public BetPopup(BetViewModel betViewModel)
    {
        InitializeComponent();
        _betViewModel = betViewModel;
        BindingContext = _betViewModel;
        OnAppearing();
    }

    private async void ClosePopup(object? sender, EventArgs e) => await CloseAsync();

    private async void OnAppearing()
    {
        var siteUrl = await SecureStorage.GetAsync("SITE_URL");
        var sessionData = JsonConvert.DeserializeObject<SessionData>(await SecureStorage.GetAsync("SESSION"));

        _betViewModel.InitializePrediction(siteUrl, sessionData.Token, sessionData.user.Email);
    }
}