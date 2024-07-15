using Auth0.OidcClient;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using TuPencaUy.Models;
using TuPencaUy.Services;
using TuPencaUy.Services.Interfaces;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

[QueryProperty("SiteUrl", "SiteUrl")]
public partial class LoginViewModel(ISessionService sessionService) : ObservableObject
{
    [ObservableProperty] private string? _siteUrl;

    [ObservableProperty] private string? _email;
    [ObservableProperty] private string? _password;

    [RelayCommand]
    private async Task Login()
    {
        var loginResult = await sessionService.Login(SiteUrl, Email, Password);

        if (loginResult is { Error: false })
        {
            sessionService.SaveSession(loginResult.Data, SiteUrl);
            await Shell.Current.GoToAsync($"///{nameof(EventsPage)}");
        }
        else
        {
            await Application.Current.MainPage.DisplayAlert("Login error", loginResult.Message, "OK");
        }
    }

    [RelayCommand]
    private async Task LoginAuth0()
    {
        var loginResult = await sessionService.LoginAuth0(SiteUrl);

        if (loginResult is { Error: false })
        {
            sessionService.SaveSession(loginResult.Data, SiteUrl);
            await Shell.Current.GoToAsync($"///{nameof(EventsPage)}");
        }
        else
        {
            await Application.Current.MainPage.DisplayAlert("Login error", loginResult.Message, "OK");
        }
    }

    [RelayCommand]
    private async Task Register()
    {
        await Shell.Current.GoToAsync(nameof(SignupPage));
        WeakReferenceMessenger.Default.Send(new DataMessage(SiteUrl));
    }
}