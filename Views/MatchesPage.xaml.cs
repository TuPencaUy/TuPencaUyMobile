using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class MatchesPage : ContentPage
{
    private readonly MatchesViewModel _matchesViewModel;

    public MatchesPage(MatchesViewModel matchesViewModel)
    {
        InitializeComponent();
        _matchesViewModel = matchesViewModel;
        BindingContext = _matchesViewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        var siteUrl = await SecureStorage.GetAsync("SITE_URL");
        var sessionData =
            JsonConvert.DeserializeObject<SessionData>(await SecureStorage.GetAsync("SESSION") ?? string.Empty);

        await _matchesViewModel.InitializeMatches(siteUrl, sessionData.Token, sessionData.user.Email);
    }
}