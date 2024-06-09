using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class StartViewModel : ObservableObject
{
    [RelayCommand]
    private async Task Tap()
    {
        await Shell.Current.GoToAsync(nameof(ProfilePage));
    }
}