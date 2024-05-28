using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TuPencaUy.ViewModel;

namespace TuPencaUy;

public partial class SelectSitePage : ContentPage
{
    public SelectSitePage(SelectSiteViewModel selectSiteViewModel)
    {
        InitializeComponent();
        BindingContext = selectSiteViewModel;
    }
}