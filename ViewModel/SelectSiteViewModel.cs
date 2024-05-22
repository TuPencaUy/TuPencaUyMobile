using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

namespace TuPencaUy.ViewModel;

public partial class SelectSiteViewModel : ObservableObject
{
    [ObservableProperty] private string? _siteUrl;

    [RelayCommand]
    private async Task Tap(string siteUrl)
    {
        await Shell.Current.GoToAsync($"{nameof(LoginPage)}?siteUrl={siteUrl}");
    }
}