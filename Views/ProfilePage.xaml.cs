using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class ProfilePage : ContentPage
{
    private ProfileViewModel _profileViewModel;
    
    public ProfilePage(ProfileViewModel profileViewModel)
    {
        InitializeComponent();
        _profileViewModel = profileViewModel;
        BindingContext = profileViewModel;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        
        _profileViewModel.InitializeProfile();
    }
}