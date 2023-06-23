using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Conference
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            Manager.MainFrame = MainFrame;
        }
        /// <summary>
        /// Просмотр мероприятий
        /// </summary>
        
        private void EventRead_Click(object sender, RoutedEventArgs e)
        {
            
        }

        /// <summary>
        /// переход на страницу авторизации
        /// </summary>
        private void SignIn_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new Autorizaciya());
        }
        /// <summary>
        /// Выйти на главную страницу
        /// </summary>
        private void SignOut_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
