using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Windows;
using System.Windows.Shapes;

namespace ShapesTest
{
    /// <summary> 
    /// Creator for a Line 
    /// </summary> 
    partial class LineCreator : Tool
    {
        /// <summary> 
        /// Constructor 
        /// </summary> 
        /// <param name=”line”></param> 
        /// <param name=”host”></param> 
        public LineCreator(Line line, IToolHost host): base(host)
        {
            this.line = line;
        }

        /// <summary> 
        /// Line to be constructed interactively 
        /// </summary> 
        Line line;

        /// <summary> 
        /// First point of the line 
        /// </summary> 
        public Point P1
        {
            set
            {
                line.X1 = value.X;
                line.Y1 = value.Y;
            }
            get
            {
                return new Point(line.X1, line.Y1);
            }
        }

        /// <summary> 
        /// Second point of the line. 
        /// </summary> 
        public Point P2
        {
            set
            {
                line.X2 = value.X;
                line.Y2 = value.Y;
            }
            get
            {
                return new Point(line.X2, line.Y2);
            }
        }

        /// <summary> 
        /// Center for the line 
        /// </summary> 
        public Point Center { set; get; }

        /// <summary> 
        /// Compute the symmetric point of a given point  /// with respect to the centre
        /// </summary> 
        /// <param name="p"></param> 
        /// <returns></returns> 
        public Point SymmetricTo(Point p)
        {
            Vector v = p - Center;
            return Center - v;
        }
    }
}
