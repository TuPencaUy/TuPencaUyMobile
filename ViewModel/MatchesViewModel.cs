using System.Collections.ObjectModel;
using CommunityToolkit.Maui.Views;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.IdentityModel.Tokens;
using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

[QueryProperty("EventId", "EventId")]
public partial class MatchesViewModel(IMatchService matchService) : ObservableObject
{
    [ObservableProperty] private ObservableCollection<Match> _matches = [];
    [ObservableProperty] private bool _isLoading;
    [ObservableProperty] private bool _isEmpty;

    [ObservableProperty] private int _eventId;

    public async void InitializeMatches(string siteUrl)
    {
        IsEmpty = false;
        IsLoading = true;

        var eventMatchesResult = await matchService.GetMatches(siteUrl: siteUrl, eventId: EventId);

        Matches = new ObservableCollection<Match>(eventMatchesResult.Data.Matches);

        IsEmpty = Matches.IsNullOrEmpty();

        IsLoading = false;
    }

    [RelayCommand]
    private static async Task OpenModifyPrediction()
    {
        await Application.Current.MainPage.ShowPopupAsync(new ModifyPredictionPopup());
    }
}