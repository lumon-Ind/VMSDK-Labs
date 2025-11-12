using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows;

namespace ShapesTest
{
     /// <summary> 
     /// Base class for tools 
     /// </summary> 
     /// <intent>Tools are for instance shape creators, or the selection, or...</intent> 
     public abstract class Tool
        {
        /// <summary> 
        /// Host for the tool 
        /// </summary> 
        IToolHost host;

        /// <summary> 
        /// Chaining constructor, to initialize the host 
        /// </summary> 
        /// <param name="host"></param> 
        protected Tool(IToolHost host)
        {
            this.host = host;
        }

        /// <summary> 
        /// Event triggered when the host sends a Mouse (Left) Button Down event 
        /// </summary> 
        protected internal virtual void MouseDown(Point p)
        {

        }

        /// <summary> 
        /// Event triggered when the host sends a Mouse (Left) Button Up event 
        /// </summary> 
        protected internal virtual void MouseUp(Point p)
        {
        }

        /// <summary> 
        /// Event triggered when the host sends a Mouse Move event 
        /// </summary> 
        protected internal virtual void MouseMove(Point p)
        {
        }

        /// <summary> 
        /// Event triggered when the host sends a Key down event 
        /// </summary> 
        protected internal virtual void KeyDown(Key key)
        {
        }

        /// <summary> 
        /// Event triggered when the host sends a Key up event 
        /// </summary> 
        protected internal virtual void KeyUp(Key key)
        {
            if (key == Key.Escape)
                Abort();
        }

        /// <summary> 
        /// Allows the tool to notify the host that it has terminated 
        /// </summary> 
        protected void Terminate()
        {
            host.Terminate();
        }

        /// <summary> 
        /// Allows the tool to notify the host that it asks for abortion 
        /// </summary> 
        protected void Abort()
        {
            host.Cancel();
        }
    }
}
