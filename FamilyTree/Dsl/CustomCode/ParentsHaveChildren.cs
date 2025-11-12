using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Validation;
using System.Runtime.Remoting.Contexts;

namespace Company.FamilyTree
{
    [ValidationState(ValidationState.Enabled)]
    public partial class ParentsHaveChildren
    {
        [ValidationMethod
  ( 
    ValidationCategories.Open // On file load.
  | ValidationCategories.Save // On save to file.
  | ValidationCategories.Menu // On user menu command.
  )]
        private void ValidateParentBirth(ValidationContext validationContext)
        {
            // In this DSL, the role names of this relationship
            // are "Child" and "Parent":
            if (this.Child.BirthYear < this.Parent.BirthYear
               // Allow user to leave the year unset:
               && this.Child.BirthYear != 0 && this.Parent.BirthYear != 0)
            {
                validationContext.LogError(
                               // Description:
                               "Child must be born after Parent",
                               // Unique code for this error:
                               "FAB001ParentBirthError",
                               // Objects to select when user double-clicks error:
                               this.Parent,
                               this.Child);
            }
        }
    }
}
