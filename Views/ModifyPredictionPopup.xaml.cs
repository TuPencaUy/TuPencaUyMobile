using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Maui.Views;

namespace TuPencaUy.Views;

public partial class ModifyPredictionPopup: Popup
{
    public ModifyPredictionPopup()
    {   
        InitializeComponent();
    }
    private async void OnAcceptButtonClicked(object sender, EventArgs e)
    {
        if (double.TryParse(Value1Entry.Text, out var value1) &&
            double.TryParse(Value2Entry.Text, out var value2))
        {
            Close();
        }
        else
        {
            await Application.Current.MainPage.DisplayAlert("Error,","Por favor, ingrese valores numericos validos.","OK");
        }
    }
}