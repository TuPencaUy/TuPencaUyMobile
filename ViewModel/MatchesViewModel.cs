using System.Collections.ObjectModel;
using CommunityToolkit.Maui.Core;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.IdentityModel.Tokens;
using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.ViewModel;

[QueryProperty("EventId", "EventId")]
public partial class MatchesViewModel(IMatchService matchService, IBetService betService, IPopupService popupService)
    : ObservableObject
{
    [ObservableProperty] private int _eventId;

    [ObservableProperty] private ObservableCollection<Match> _matches = [];
    [ObservableProperty] private bool _isLoading;
    [ObservableProperty] private bool _isEmpty;

    private string? SiteUrl { get; set; }
    private string? Token { get; set; }
    private string? UserEmail { get; set; }

    public async Task InitializeMatches(string siteUrl, string token, string userEmail)
    {
        IsEmpty = false;
        IsLoading = true;

        SiteUrl = siteUrl;
        Token = token;
        UserEmail = userEmail;

        var eventMatchesResult = await matchService.GetMatches(siteUrl, token, EventId);

        if (!eventMatchesResult.Data.Matches.IsNullOrEmpty())
        {
            foreach (var match in eventMatchesResult.Data.Matches)
            {
                var betResult = await betService.GetBet(siteUrl, token, EventId, match.Id, userEmail);

                if (betResult?.Data != null) match.Bet = betResult.Data.Bet();
            }
        }

        Matches = new ObservableCollection<Match>(eventMatchesResult.Data.Matches);

        IsEmpty = Matches.IsNullOrEmpty();

        IsLoading = false;
    }

    [RelayCommand]
    private async Task OpenBetPopup(int matchId)
    {
        var popupAsync = await popupService.ShowPopupAsync<BetViewModel>(model =>
        {
            model.EventId = EventId;
            model.MatchId = matchId;
        });

        await InitializeMatches(SiteUrl, Token, UserEmail);
    }
}