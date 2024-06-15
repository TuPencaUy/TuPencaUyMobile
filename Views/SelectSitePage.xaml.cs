using TuPencaUy.ViewModel;

namespace TuPencaUy.Views;

public partial class SelectSitePage : ContentPage
{
    public SelectSitePage(SelectSiteViewModel selectSiteViewModel)
    {
        InitializeComponent();
        BindingContext = selectSiteViewModel;
    }
}