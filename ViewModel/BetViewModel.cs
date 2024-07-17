using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.ViewModel;

[QueryProperty("EventId", "EventId")]
[QueryProperty("MatchId", "MatchId")]
public partial class BetViewModel(IBetService betService) : ObservableObject
{
    [ObservableProperty] private int _eventId;
    [ObservableProperty] private int _matchId;

    [ObservableProperty] private Match? _match;
    [ObservableProperty] private int? _firstTeamScore;
    [ObservableProperty] private int? _secondTeamScore;
    private string? SiteUrl { get; set; }
    private string? Token { get; set; }
    private string? UserEmail { get; set; }
    private Bet? BetData { get; set; }

    public async void InitializePrediction(string siteUrl, string token, string userEmail)
    {
        SiteUrl = siteUrl;
        Token = token;
        UserEmail = userEmail;

        var betResult = await betService.GetBet(SiteUrl, token, EventId, MatchId, UserEmail);

        BetData = betResult?.Data?.Bet();

        if (BetData == null) return;

        Match = BetData.Match;
        FirstTeamScore = BetData.ScoreFirstTeam;
        SecondTeamScore = BetData.ScoreSecondTeam;
    }

    [RelayCommand]
    private async Task ConfirmBet()
    {
        if (FirstTeamScore is null or < 0 || SecondTeamScore is null or < 0)
        {
            await Application.Current.MainPage.DisplayAlert("Error", "Please enter valid numerical values.",
                "OK");
        }
        else if (BetData == null)
        {
            var betResult = await betService.CreateBet(SiteUrl, Token, EventId, MatchId, UserEmail,
                FirstTeamScore.Value,
                SecondTeamScore.Value);
        }
        else
        {
            var betResult = await betService.UpdateBet(SiteUrl, Token, EventId, MatchId, UserEmail,
                FirstTeamScore.Value,
                SecondTeamScore.Value);
        }
    }
}