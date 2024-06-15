using Microsoft.Extensions.Logging;
using TuPencaUy.Services;
using TuPencaUy.ViewModel;

using MauiIcons.Material;
using Microsoft.Maui.LifecycleEvents;
using Plugin.Firebase.Auth;
using TuPencaUy.Views;

using Plugin.Firebase.Auth;

#if IOS
using Plugin.Firebase.Core.Platforms.iOS;
#elif ANDROID
using Plugin.Firebase.Core.Platforms.Android;
#endif

namespace TuPencaUy;

public static class MauiProgram
{
    public static MauiApp CreateMauiApp()
    {
        var builder = MauiApp.CreateBuilder();
        builder
            .UseMauiApp<App>()
            .RegisterFirebaseServices()
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

    private static MauiAppBuilder RegisterFirebaseServices(this MauiAppBuilder builder)
    {
        builder.ConfigureLifecycleEvents(events => {
#if IOS
            events.AddiOS(iOS => iOS.WillFinishLaunching((_,__) => {
                CrossFirebase.Initialize();
                return false;
            }));
#elif ANDROID
            events.AddAndroid(android => android.OnCreate((activity, _) =>
                CrossFirebase.Initialize(activity: activity)));
#endif
        });
        
        builder.Services.AddSingleton(_ => CrossFirebaseAuth.Current);
        return builder;
    }
}