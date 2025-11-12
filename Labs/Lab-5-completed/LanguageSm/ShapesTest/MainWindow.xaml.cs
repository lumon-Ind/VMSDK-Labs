using System.Text;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;

using System.Windows.Media.Imaging;
using System.Windows.Navigation;

using System.Windows.Input;
using System.Windows;
using System.Windows.Media;
using System.Windows.Shapes;

namespace ShapesTest
{
    /// <summary> 
    /// Interaction logic for Window1.xaml 
    /// </summary> 
    public partial class MainWindow : Window, IToolHost
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        Tool currentTool;

        Shape currentShape;

        private void createLine_Click(object sender, RoutedEventArgs e)
        {
            currentShape = new Line();
            currentShape.Stroke = Brushes.Red;
            canvas.Children.Add(currentShape);
            currentTool = new LineCreator(currentShape as Line, this);
        }

        private void Canvas_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            if (currentTool != null)
                currentTool.MouseDown(e.GetPosition(canvas));
        }

        private void Canvas_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (currentTool != null)
                currentTool.MouseUp(e.GetPosition(canvas));
        }

        private void Canvas_MouseMove(object sender, MouseEventArgs e)
        {
            if (currentTool != null)
                currentTool.MouseMove(e.GetPosition(canvas));
        }

        private void Canvas_KeyUp(object sender, KeyEventArgs e)
        {
            if (currentTool != null)
                currentTool.KeyUp(e.Key);
        }

        private void Canvas_KeyDown(object sender, KeyEventArgs e)
        {
            if (currentTool != null)
                currentTool.KeyDown(e.Key);
        }


        #region IToolHost Members 
        public void Cancel()
        {
            canvas.Children.Remove(currentShape);
            Terminate();
        }

        public void Terminate()
        {
            currentShape = null;
            currentTool = null;
        }
        #endregion
    }
}