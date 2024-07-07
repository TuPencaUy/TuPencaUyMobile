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

        _matchesViewModel.InitializeMatches(await SecureStorage.GetAsync("SITE_URL"));
    }
}