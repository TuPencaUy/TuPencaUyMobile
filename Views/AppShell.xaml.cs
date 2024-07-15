namespace TuPencaUy.Views;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();

        Routing.RegisterRoute(nameof(LoginPage), typeof(LoginPage));
        Routing.RegisterRoute(nameof(SignupPage), typeof(SignupPage));
        Routing.RegisterRoute(nameof(ProfilePage), typeof(ProfilePage));
        Routing.RegisterRoute(nameof(MatchesPage), typeof(MatchesPage));
        Routing.RegisterRoute(nameof(LeaderboardPage), typeof(LeaderboardPage));
    }
}