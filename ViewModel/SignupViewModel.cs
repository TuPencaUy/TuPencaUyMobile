using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using TuPencaUy.Models;
using TuPencaUy.Services.Interfaces;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

[QueryProperty("SiteUrl", "SiteUrl")]
public partial class SignupViewModel(IIdentityService identityService) : ObservableObject
{
    [ObservableProperty] private string? _siteUrl;

    [ObservableProperty] private string? _name;
    [ObservableProperty] private string? _email;
    [ObservableProperty] private string? _password;

    [RelayCommand]
    private async Task Signup()
    {
        var siteResult = await identityService.ValidateSite(SiteUrl);

        if (siteResult == null || siteResult.Error)
        {
            await Application.Current.MainPage.DisplayAlert("Site error", siteResult.Message, "OK");
            return;
        }

        var accessType = siteResult.Data.AccessType;

        var registerResult = await identityService.Signup(SiteUrl, Name, Email, Password, accessType);

        if (registerResult is { Error: false })
        {
            await identityService.SaveSession(registerResult.Data, SiteUrl);
            await Shell.Current.GoToAsync($"///{nameof(EventsPage)}");
        }
        else
        {
            await Application.Current.MainPage.DisplayAlert($"Error on signup in ${SiteUrl}", registerResult.Message,
                "OK");
        }
    }
}