using Microsoft.VisualStudio.Modeling;
using System.Text.RegularExpressions;

namespace Company.LanguageSm
{
    /// <summary>
    /// When the event / condition / action changes the label is recomputed and vice versa
    /// </summary>
    [RuleOn(typeof(Transition))]
    public sealed class TransitionLabelRule : ChangeRule
    {
        /// <summary>
        /// This method is called whenever any attribute of a Transition changes. It processes
        /// the validation Label = Event + "["+Condition+"] / "+Action
        /// </summary>
        /// <param name="e"></param>
        public override void ElementPropertyChanged(ElementPropertyChangedEventArgs e)
        {
            
            Transition t = e.ModelElement as Transition;
            // Compute Label when Event changes
            if (e.DomainProperty.Id == Transition.EventDomainPropertyId)
                t.Label = ComputeSummary(e.NewValue as string, t.Condition, t.Action);
            // Compute Label when Condition changes
            else if (e.DomainProperty.Id == Transition.ConditionDomainPropertyId)
                t.Label = ComputeSummary(t.Event, e.NewValue as string, t.Action);
            // Compute Label when Action changes
            else if (e.DomainProperty.Id == Transition.ActionDomainPropertyId)
                t.Label = ComputeSummary(t.Event, t.Condition, e.NewValue as string);
            // Compute Event, Condition, Action when Label changes
            else if (e.DomainProperty.Id == Transition.LabelDomainPropertyId)
                ComputeProperties(e.NewValue as string, t);
        }

        /// <summary>
        /// Computes the summary label from the event name, condition, and action
        /// </summary>
        private static string ComputeSummary(string eventName, string condition, string action)
        {
            // Event
            string eventString = "";
            if (eventName != "")
                eventString = eventName;
            // Condition
            string conditionString = "";
            if (condition != "")
            {
                conditionString = " [ " + condition + " ]";
                if (eventString != "")
                    conditionString = " " + conditionString;
            }
            // Actions
            string actionString = "";
            if (action != "")
                actionString = " / " + action;
            string newSummary = eventString + conditionString + actionString;
            return newSummary.Trim();
        }

        /// <summary>
        /// Regular expression for parsing “event() [condition] / Action()”
        /// </summary>
        public static Regex eventLabelRegEx = new Regex(@"^(?<EventGroup>(?<EventName>[a-zA-Z_]?\w+)\s*((?<EventSignatureGroup>\((?<EventSignature>[^\)]*)\)))?)?\s*(?<ConditionGroup>\[(?<Condition>[^\]]*)\])?\s*(?<ActionGroup>\/\s*.*)?", RegexOptions.IgnoreCase | RegexOptions.Compiled);

        /// <summary>
        /// Computes the event, condition and action from label
        /// </summary>
        private static void ComputeProperties(string label, Transition t)
        {
            
            // Parses the label
            System.Text.RegularExpressions.Match match = eventLabelRegEx.Match(label);
            // and sets other properties
            if (match.Success)
            {
                t.Event = match.Groups["EventGroup"].Value.Trim();
                t.Condition = match.Groups["Condition"].Value.Trim();
                string actionWithSlash = match.Groups["ActionGroup"].Value.Trim();
                if (actionWithSlash.StartsWith("/"))
                    t.Action = actionWithSlash.Substring(1).TrimStart();
                else
                    t.Action = actionWithSlash;
            }
            
        }
    }
}
