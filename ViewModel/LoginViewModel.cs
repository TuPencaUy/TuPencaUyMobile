using System.Windows.Input;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using TuPencaUy.Services;

namespace TuPencaUy.ViewModel;

public partial class LoginViewModel(ILoginService loginService) : ObservableObject
{
    [ObservableProperty] private string? _email;
    [ObservableProperty] private string? _password;
    
    [RelayCommand]
    private async Task Login()
    {
        if (string.IsNullOrEmpty(Email)) return;
        if (string.IsNullOrEmpty(Password)) return;

        var loginResult = await loginService.Login(Email,Password);

        if (loginResult.Error)
        {
            await Application.Current.MainPage.DisplayAlert("Error al loguearse",loginResult.Message,"OK");
        }
        else
        {
            await Shell.Current.GoToAsync($"///{nameof(StartPage)}");
        }
    }
    
}