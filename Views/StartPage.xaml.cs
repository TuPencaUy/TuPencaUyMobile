using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class StartPage : ContentPage
{
    public StartPage(StartViewModel startViewModel)
    {
        InitializeComponent();
        BindingContext = startViewModel;
    }
}