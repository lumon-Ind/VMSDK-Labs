using Microsoft.CSharp;
using Microsoft.VisualStudio.Modeling.Validation;

namespace Company.LanguageSm
{
    [ValidationState(ValidationState.Enabled)]
    public partial class State
    {
        /// <summary>
        /// CSharp code provider to verify identifiers.
        /// </summary>
        private static CSharpCodeProvider csharp = new CSharpCodeProvider();

        /// <summary>
        /// Warning method to ensure that the Name of a state is :
        /// - not empty
        /// - a valid C# identifier
        /// </summary>
        /// <param name="context"></param>
        /// <remarks>
        /// 1. This validation method will be called when the model is loaded or saved, and also when the user invokes validation explicitly.
        /// 2. When the user double-clicks the corresponding item in the error list, this state will be selected in the diagram.
        /// </remarks>
        [ValidationMethod(ValidationCategories.Open | ValidationCategories.Save | ValidationCategories.Menu)]
        private void ValidateAttributeNameAsValidIdentifier(ValidationContext context)
        {
            if (string.IsNullOrWhiteSpace(Name))
                context.LogError(CustomCode.Validation.ValidationResources.EmptyStateNameError, "StateMachine 01", this);
            // Name is a valid C# identifier
            else if (!csharp.IsValidIdentifier(Name))
            {
                string error = string.Format(System.Globalization.CultureInfo.CurrentUICulture,
                CustomCode.Validation.ValidationResources.InvalidStateIdentifierError, Name);
                context.LogError(error, "StateMachines – State - 02", this);
            }
            
        }

        /// <summary>
        /// Validation method to ensure that a final state has no outgoing transitions
        /// </summary>
        [ValidationMethod(ValidationCategories.Open | ValidationCategories.Save | ValidationCategories.Menu)]
        private void ValidateFinalStateHasNoOutgoingTransitions(ValidationContext context)
        {
            if ((Kind == StateKind.Final) && (Successors.Count > 0))
            {
                string error = string.Format(System.Globalization.CultureInfo.CurrentUICulture,
                CustomCode.Validation.ValidationResources.FinalStateShouldNotHaveOutgoingTransitions, Name);
                context.LogError(error, "StateMachines – State - 03", this);
            }
        }        
    }
}
