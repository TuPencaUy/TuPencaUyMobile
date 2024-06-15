using Microsoft.Extensions.Logging;
using TuPencaUy.Services;
using TuPencaUy.ViewModel;

using MauiIcons.Material;
using TuPencaUy.Views;

namespace TuPencaUy;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .ConfigureFonts(fonts =>
            {
                fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
            });
        // Initialise the .Net Maui Icons - Material
        builder.UseMauiApp<App>().UseMaterialMauiIcons();
        
        builder.Services.AddSingleton<ISessionService, SessionService>();
        
        builder.Services.AddSingleton<SelectSitePage>();
        builder.Services.AddSingleton<SelectSiteViewModel>();
        
        builder.Services.AddSingleton<LoginPage>();
        builder.Services.AddSingleton<LoginViewModel>();
        
        builder.Services.AddSingleton<SignupPage>();
        builder.Services.AddSingleton<SignupViewModel>();
        
        builder.Services.AddSingleton<StartPage>();
        builder.Services.AddSingleton<StartViewModel>();
        
        builder.Services.AddSingleton<ProfilePage>();
        builder.Services.AddSingleton<ProfileViewModel>();
        
#if DEBUG
        builder.Logging.AddDebug();
#endif

        return builder.Build();
    }
}