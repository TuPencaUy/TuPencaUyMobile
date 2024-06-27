using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.Services;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class EventsViewModel(IEventService eventService) : ObservableObject
{
    [ObservableProperty] private ObservableCollection<Event> _events = [];

    public async void InitializeEvents()
    {
        var session =
            JsonConvert.DeserializeObject<SessionData>(await SecureStorage.GetAsync("SESSION") ?? string.Empty);
        var user = session?.user;

        if (user == null) return;

        if (!user.Events.IsNullOrEmpty()) Events = new ObservableCollection<Event>(user.Events);
    }

    [RelayCommand]
    private async Task OpenProfilePage()
    {
        await Shell.Current.GoToAsync(nameof(ProfilePage));
    }
    
    [RelayCommand]
    private async Task OpenMatchesPage()
    {
        await Shell.Current.GoToAsync(nameof(ProfilePage));
    }
}