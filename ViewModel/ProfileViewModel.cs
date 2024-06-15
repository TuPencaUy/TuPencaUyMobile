using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TuPencaUy.Services;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class ProfileViewModel(ISessionService sessionService) : ObservableObject
{
    [RelayCommand]
    private async Task Logout()
    {
        var logoutConfirmation = await Application.Current.MainPage.DisplayAlert("Cerrar Sesión","Está seguro que desea cerrar la sesión actual?","OK", "Cancelar");

        if (logoutConfirmation)
        {
            sessionService.Logout();
            await Shell.Current.GoToAsync($"///{nameof(SelectSitePage)}");
        }
    }
}