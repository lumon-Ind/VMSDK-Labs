using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Windows.Forms.AxHost;

namespace Company.LanguageSm
{
    public static partial class TransitionBuilder
    {
        /// <summary>
        /// Only accept a candidate as source if it is not a Final State
        /// </summary>
        private static bool CanAcceptStateAsSource(State candidate)
        {
            return ((candidate != null) && (candidate.Kind != StateKind.Final));
        }

        /// <summary>
        /// Source state should be acceptable to accept source and target
        /// </summary>
        private static bool CanAcceptStateAndStateAsSourceAndTarget(State sourceState, State targetState)
        {
            return CanAcceptSource(sourceState);
        }
    }
}
