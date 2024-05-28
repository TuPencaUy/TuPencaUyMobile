using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using TuPencaUy.Models;
using TuPencaUy.Services;

namespace TuPencaUy.ViewModel;

public partial class LoginViewModel : ObservableObject
{
    [ObservableProperty] private string? _email;
    [ObservableProperty] private string? _password;

    private readonly IUserService? _userService;
    private string? siteUrl { get; set; }

    public LoginViewModel(IUserService userService)
    {
        _userService = userService;
        
        if (!WeakReferenceMessenger.Default.IsRegistered<DataMessage>(this))
        {
            WeakReferenceMessenger.Default.Register<DataMessage>(this,
                (recipient, message) => siteUrl = message.Value);
        }
    }
    
    [RelayCommand]
    private async Task Login()
    {
        var loginResult = await _userService.Login(siteUrl, Email, Password);
        
        if (loginResult is { Error: true })
        {
            await Application.Current.MainPage.DisplayAlert("Error al loguearse",loginResult.Message,"OK");
        }
        else
        {
            _userService.SaveUser(loginResult.Data.user);
            await Shell.Current.GoToAsync($"///{nameof(StartPage)}");
        }
    }
    
}