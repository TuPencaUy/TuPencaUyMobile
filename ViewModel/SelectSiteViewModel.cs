using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class SelectSiteViewModel : ObservableObject
{
    [ObservableProperty] private string? _siteUrl;

    [RelayCommand]
    private async Task GoToLoginPage()
    {
        if (SiteUrl != null)
        {
            await Shell.Current.GoToAsync(nameof(LoginPage));
            await Shell.Current.GoToAsync($"{nameof(LoginPage)}?SiteUrl={SiteUrl}");
        }
    }

    public async Task GoToEventPage()
    {
        await Shell.Current.GoToAsync($"///{nameof(EventsPage)}");
    }
}