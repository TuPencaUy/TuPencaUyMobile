using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Newtonsoft.Json;
using TuPencaUy.Models;
using TuPencaUy.Services;
using TuPencaUy.Services.Interfaces;
using TuPencaUy.Views;

namespace TuPencaUy.ViewModel;

public partial class ProfileViewModel(ISessionService sessionService) : ObservableObject
{
    [ObservableProperty] private string? _name;
    [ObservableProperty] private string? _email;

    public async void InitializeProfile()
    {
        var session = JsonConvert.DeserializeObject<SessionData>(await SecureStorage.GetAsync("SESSION") ?? string.Empty);
        var user = session?.user;
        
        if(user == null) return;
        
        Name = user.Name;
        Email = user.Email;
    }
    
    [RelayCommand]
    private async Task Logout()
    {
        var logoutConfirmation = await Application.Current.MainPage.DisplayAlert("Cerrar Sesión","Está seguro que desea cerrar la sesión actual?","OK", "Cancelar");

        if (logoutConfirmation)
        {
            await sessionService.Logout();
            await Shell.Current.GoToAsync($"///{nameof(SelectSitePage)}");
        }
    }
}