using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class EventsPage : ContentPage
{
    private readonly EventsViewModel _eventsViewModel;

    public EventsPage(EventsViewModel eventsViewModel)
    {
        InitializeComponent();
        _eventsViewModel = eventsViewModel;
        BindingContext = _eventsViewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        var sessionData =
            JsonConvert.DeserializeObject<SessionData>(await SecureStorage.GetAsync("SESSION") ?? string.Empty);
        var user = sessionData?.user;

        _eventsViewModel.InitializeEvents(user);
    }
}