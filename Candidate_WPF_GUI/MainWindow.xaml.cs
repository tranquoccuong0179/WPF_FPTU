using Candidate_BusinessObjects;
using Candidate_Service;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Candidate_WPF_GUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        //private IHRAccountService _hrAccountService;
        //public MainWindow()
        //{
        //    InitializeComponent();
        //    _hrAccountService = new HRAccountService();
        //}

        //private void btbLogin_Click(object sender, RoutedEventArgs e)
        //{
        //    Hraccount hraccount = _hrAccountService.GetHraccountByEmail(txtEmail.Text);
        //    if (hraccount != null && hraccount.Password.Equals(BindablePasswordBox.Password) && hraccount.MemberRole == 1)
        //    {
        //        MessageBox.Show("Hello World");
        //    }
        //    else
        //        MessageBox.Show("Bye bye");
        //}

        //private void btbCancel_Click(object sender, RoutedEventArgs e)
        //{
        //    this.Close();
        //}
    }
}