using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class LeaderboardPage : ContentPage
{
    private readonly LeaderboardViewModel _leaderboardViewModel;

    public LeaderboardPage(LeaderboardViewModel leaderboardViewModel)
    {
        InitializeComponent();
        _leaderboardViewModel = leaderboardViewModel;
        BindingContext = _leaderboardViewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        var siteUrl = await SecureStorage.GetAsync("SITE_URL");
        var sessionData =
            JsonConvert.DeserializeObject<SessionData>(await SecureStorage.GetAsync("SESSION") ?? string.Empty);

        await _leaderboardViewModel.InitializeLeaderboard(siteUrl, sessionData.Token);
    }
}