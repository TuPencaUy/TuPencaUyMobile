using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using CommunityToolkit.Mvvm.Messaging;
using TuPencaUy.Models;
using TuPencaUy.Services;
using TuPencaUy.Services.Interfaces;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class SignupViewModel : ObservableObject
{
    [ObservableProperty] private string? _name;
    [ObservableProperty] private string? _email;
    [ObservableProperty] private string? _password;

    private readonly ISessionService _sessionService;
    private string? siteUrl { get; set; }

    public SignupViewModel(ISessionService sessionService)
    {
        _sessionService = sessionService;
        
        if (!WeakReferenceMessenger.Default.IsRegistered<DataMessage>(this))
        {
            WeakReferenceMessenger.Default.Register<DataMessage>(this,
                (recipient, message) => siteUrl = message.Value);
        }
    }
    
    [RelayCommand]
    private async Task Signup()
    {
        var registerResult = await _sessionService.Signup(siteUrl, _name, Email, Password);
        
        if (registerResult is { Error: true })
        {
            await Application.Current.MainPage.DisplayAlert($"Error al registrarse en ${siteUrl}", registerResult.Message, "OK");
        }
        else
        {
            _sessionService.SaveSession(registerResult.Data, siteUrl);
            await Shell.Current.GoToAsync($"///{nameof(EventsPage)}");
        }
    }
}