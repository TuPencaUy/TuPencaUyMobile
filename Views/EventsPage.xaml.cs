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

    protected override void OnAppearing()
    {
        base.OnAppearing();
        
        _eventsViewModel.InitializeEvents();
    }
}