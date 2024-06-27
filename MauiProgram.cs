using Auth0.OidcClient;
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
        builder.Services.AddSingleton<IEventService, EventService>();
        
        builder.Services.AddSingleton<SelectSitePage>();
        builder.Services.AddSingleton<SelectSiteViewModel>();
        
        builder.Services.AddSingleton<LoginPage>();
        builder.Services.AddSingleton<LoginViewModel>();
        
        builder.Services.AddSingleton<SignupPage>();
        builder.Services.AddSingleton<SignupViewModel>();
        
        builder.Services.AddSingleton<EventsPage>();
        builder.Services.AddSingleton<EventsViewModel>();
        
        builder.Services.AddSingleton<ProfilePage>();
        builder.Services.AddSingleton<ProfileViewModel>();
        
        builder.Services.AddSingleton(new Auth0Client(new Auth0ClientOptions
        {
            Domain = "dev-hj0am7c24rdsc5za.us.auth0.com",
            ClientId = "Up5rjNKsFaJRS0ArII9XqwCB9K5Y5PVQ",
            RedirectUri = "myapp://callback/",
            PostLogoutRedirectUri = "myapp://callback/",
            Scope = "openid profile email"
        }));
        
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