using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShapesTest
{
    /// <summary> 
    /// Interface to be implemented by objects wanting to host tools 
    /// (Tools are for instance geometric shape creation tools) 
    /// </summary> 
    public interface IToolHost
    {
        void Cancel();
        void Terminate();
    }
}
