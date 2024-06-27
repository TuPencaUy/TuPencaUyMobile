using Auth0.OidcClient;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using TuPencaUy.Models;
using TuPencaUy.Services;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class LoginViewModel : ObservableObject
{
    [ObservableProperty] private string? _email;
    [ObservableProperty] private string? _password;

    private readonly ISessionService _sessionService;
    private string? SiteUrl { get; set; }
    
    public LoginViewModel(ISessionService sessionService, Auth0Client auth0Client)
    {
        _sessionService = sessionService;
        
        if (!WeakReferenceMessenger.Default.IsRegistered<DataMessage>(this))
        {
            WeakReferenceMessenger.Default.Register<DataMessage>(this,
                (recipient, message) => SiteUrl = message.Value);
        }
    }
    
    [RelayCommand]
    private async Task Login()
    {
        var loginResult = await _sessionService.Login(SiteUrl, Email, Password);
        
        if (loginResult is { Error: false })
        {
            _sessionService.SaveSession(loginResult.Data);
            await Shell.Current.GoToAsync($"///{nameof(EventsPage)}");
        }
        else
        {
            await Application.Current.MainPage.DisplayAlert("Error al loguearse",loginResult.Message,"OK");
        }
    }
    
    [RelayCommand]
    private async Task LoginAuth0()
    {
        var loginResult = await _sessionService.LoginAuth0(SiteUrl);
        
        if (loginResult is { Error: false })
        {
            _sessionService.SaveSession(loginResult.Data);
            await Shell.Current.GoToAsync($"///{nameof(EventsPage)}");
        }
        else
        {
            await Application.Current.MainPage.DisplayAlert("Error al loguearse",loginResult.Message,"OK");
        }
    }
    
    
    [RelayCommand]
    private async Task Register()
    {
        await Shell.Current.GoToAsync(nameof(SignupPage));
        WeakReferenceMessenger.Default.Send(new DataMessage(SiteUrl));
    }
}