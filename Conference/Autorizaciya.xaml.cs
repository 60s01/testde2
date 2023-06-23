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
    /// Логика взаимодействия для Autorizaciya.xaml
    /// </summary>
    public partial class Autorizaciya : Page
    {
        public Autorizaciya()
        {
            InitializeComponent();
        }

        private void SignIn_Click(object sender, RoutedEventArgs e)
        {
            foreach (var i in Entities.GetContext().Polsovateli)
            {
                if ((tbId.Text == Convert.ToString(i.IdPolzovatelya)) && (tbParol.Text == Convert.ToString(i.Parol)))
                {
                    MessageBox.Show($"Вы зарегистрировались под {i.Imya} {i.Familiya}");
                }
            }
        }
    }
}
