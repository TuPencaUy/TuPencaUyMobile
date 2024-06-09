using TuPencaUy.ViewModel;

namespace TuPencaUy;

public partial class SignupPage : ContentPage
{
    public SignupPage(SignupViewModel signupViewModel)
    {
        InitializeComponent();
        BindingContext = signupViewModel;
    }
}