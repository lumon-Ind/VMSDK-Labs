using Company.LanguageSm;
using Microsoft.VisualStudio.Modeling;
using System;
using System.Diagnostics;

namespace Company.LanguageSm
{
    /// <summary> 
    /// When StateKind changes to Initial for a state, this state becomes 
    /// the InitialState of the State's StateMachine. 
    /// </summary> 
    [RuleOn(typeof(State))]
    public sealed class StateKindImpliesInitial : ChangeRule
    {
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {

            #region  //\todo Cannot resolve moniker '/e18aec6c-e3fb-4e63-8172-de2951b137fe/Start'.
            /*
            if (e.DomainProperty.Id == State.KindDomainPropertyId)
            {

                State state = e.ModelElement as State;

                // If the new State's kind is initial, the state becomes the 
                // StateMachine's new InitialState 
                if (state.Kind == StateKind.Initial && state.StateMachine.InitialState is null)
                    state.StateMachine.InitialState = state;
                // Case where the State was the initial state but kind is no longuer Initial, 
                else if (state.StateMachine.InitialState == state)
                    state.StateMachine.InitialState = null;
                
            }
            */
            #endregion
        }
    }
    /// <summary> 
    /// When the StateMachine's InitialState role changes from a (none) to a state, the state kind 
    /// of that state should be become Initial 
    /// </summary> 
    [RuleOn(typeof(StateMachineHasOneInitialState))]
    public sealed class StateMachineInitialStateAddImpliesStateKind : AddRule
    {
        public override void ElementAdded(ElementAddedEventArgs e)
        {
            StateMachineHasOneInitialState relationship = e.ModelElement as StateMachineHasOneInitialState;
            if (relationship.State != null) relationship.State.Kind = StateKind.Initial;
        }
    }
    /// <summary> 
    /// When the StateMachine's InitialState role changes from a State to (none), the state kind 
    /// of that state should be become Normal if it was initial 
    /// </summary> 
    [RuleOn(typeof(StateMachineHasOneInitialState))]
    public sealed class StateMachineInitialStateNulledImpliesStateKind : DeletingRule
    {
        public override void ElementDeleting(ElementDeletingEventArgs e)
        {
            StateMachineHasOneInitialState relationship = e.ModelElement as StateMachineHasOneInitialState;
            if (relationship.State.Kind == StateKind.Initial)
                relationship.State.Kind = StateKind.Normal;
        }
    }

    /// <summary> 
    /// When the StateMachine's InitialState role changes from a State to another, the state kind 
    /// of both state should be changed (previous is no long 
    /// </summary> 
    [RuleOn(typeof(StateMachineHasOneInitialState))]
    public sealed class StateMachineInitialStateChangeImpliesStateKind : RolePlayerChangeRule
    {
        public override void RolePlayerChanged(RolePlayerChangedEventArgs e)
        {
            if (e.DomainRole.Id == StateMachineHasOneInitialState.StateDomainRoleId)
            {
                // Previous initial state's kind is no longer Initial
                State oldInitialState = e.OldRolePlayer as State;
                if ((oldInitialState != null) && (oldInitialState.Kind == StateKind.Initial))
                    oldInitialState.Kind = StateKind.Normal;
                // And new statemachine's initial state's kind is now Initial
                State newInitialState = e.NewRolePlayer as State; if (newInitialState != null)
                    newInitialState.Kind = StateKind.Initial;
            }
        }
    }
}