using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.IdentityModel.Tokens;
using TuPencaUy.Models;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class EventsViewModel : ObservableObject
{
    [ObservableProperty] private ObservableCollection<Event> _events = [];
    [ObservableProperty] private bool _isLoading;
    [ObservableProperty] private bool _isEmpty;

    public void InitializeEvents(User user)
    {
        IsEmpty = false;
        IsLoading = true;

        if (user.Events != null) Events = new ObservableCollection<Event>(user.Events);

        IsEmpty = Events.IsNullOrEmpty();
        IsLoading = false;
    }

    [RelayCommand]
    private async Task OpenProfilePage()
    {
        await Shell.Current.GoToAsync(nameof(ProfilePage));
    }

    [RelayCommand]
    private async Task OpenMatchesPage(int eventId)
    {
        await Shell.Current.GoToAsync($"{nameof(MatchesPage)}?EventId={eventId}");
    }
}