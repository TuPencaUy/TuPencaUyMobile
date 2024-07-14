using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using Microsoft.IdentityModel.Tokens;
using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;

namespace TuPencaUy.ViewModel;

[QueryProperty("EventId", "EventId")]
public partial class LeaderboardViewModel(IAnalyticsService analyticsService) : ObservableObject
{
    [ObservableProperty] private int _eventId;

    [ObservableProperty] private ObservableCollection<Participant> _participants = [];
    [ObservableProperty] private bool _isLoading;
    [ObservableProperty] private bool _isEmpty;

    public async Task InitializeLeaderboard(string siteUrl, string token)
    {
        IsEmpty = false;
        IsLoading = true;

        var leaderboardResult = await analyticsService.GetLeaderboard(siteUrl, token, EventId);

        Participants = new ObservableCollection<Participant>(leaderboardResult.Data.Leaderboard);

        IsEmpty = Participants.IsNullOrEmpty();
        IsLoading = false;
    }
}