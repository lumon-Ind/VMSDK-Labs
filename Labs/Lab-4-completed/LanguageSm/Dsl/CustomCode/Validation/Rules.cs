using System;

namespace Company.LanguageSm
{
    public partial class LanguageSmDomainModel
    {
        protected override Type[] GetCustomDomainModelTypes()
        {
            /// <summary>Returns the rules that should be taken into account</summary>
            return new Type[]
                {
                // Validation between Label and Event + Condition + Action
                typeof(TransitionLabelRule) 
                // Validation between StateMachine.InitialState and state's Kind
                , typeof(StateMachineInitialStateChangeImpliesStateKind)
                , typeof(StateKindImpliesInitial)
                , typeof(StateMachineInitialStateAddImpliesStateKind)
                , typeof(StateMachineInitialStateNulledImpliesStateKind)
                };
        }
    }
}
