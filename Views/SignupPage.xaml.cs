using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class SignupPage : ContentPage
{
    public SignupPage(SignupViewModel signupViewModel)
    {
        InitializeComponent();
        BindingContext = signupViewModel;
    }
}