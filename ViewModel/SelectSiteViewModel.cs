using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using TuPencaUy.Models;

namespace TuPencaUy.ViewModel;

public partial class SelectSiteViewModel : ObservableObject
{
    [ObservableProperty] private string? _siteUrl;

    [RelayCommand]
    private async Task Tap()
    {
        if (SiteUrl != null)
        {
            await Shell.Current.GoToAsync(nameof(LoginPage));
            WeakReferenceMessenger.Default.Send(new DataMessage(SiteUrl));
        }
    }
}