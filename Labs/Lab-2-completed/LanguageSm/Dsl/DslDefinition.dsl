<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="1ed97869-b217-4378-a1d6-2d54dd972205" Description="Description for Company.LanguageSm.LanguageSm" Name="LanguageSm" DisplayName="LanguageSm" Namespace="Company.LanguageSm" ProductName="LanguageSm" CompanyName="Company" PackageGuid="6a50683e-071f-4949-99ac-ca49182e8818" PackageNamespace="Company.LanguageSm" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="3589a8b7-8b50-467f-a80b-5be5410469ea" Description="The root in which all other elements are embedded. Appears as a diagram." Name="StateMachine" DisplayName="State Machine" Namespace="Company.LanguageSm">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="State" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>StateMachineHasStates.States</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="95b81bd0-f6b5-4ebd-9078-f7e46ef46314" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="State" DisplayName="State" Namespace="Company.LanguageSm">
      <Properties>
        <DomainProperty Id="87c402a8-06db-4710-8d50-7587607b37c6" Description="Description for Company.LanguageSm.State.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="443ace78-2806-4020-9ec9-2c88736ceedc" Description="Description for Company.LanguageSm.State.Kind" Name="Kind" DisplayName="Kind">
          <Type>
            <DomainEnumerationMoniker Name="StateKind" />
          </Type>
        </DomainProperty>
      </Properties>
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="EntryAction" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>StateHasEntryActioned.EntryActioned</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="ExitAction" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>StateHasExitActioned.ExitActioned</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="ee3efc0d-4fda-4fba-9fb7-759fc0a33908" Description="Description for Company.LanguageSm.Action" Name="Action" DisplayName="Action" Namespace="Company.LanguageSm">
      <Properties>
        <DomainProperty Id="8a275c0e-782d-420c-8729-c932b5e4b74e" Description="Description for Company.LanguageSm.Action.Label" Name="Label" DisplayName="Label">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c53e9603-8583-4748-bd59-039a0dfd143a" Description="Description for Company.LanguageSm.Action.Code" Name="Code" DisplayName="Code">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="87a2c724-e40e-4987-8a21-012f4cae69de" Description="Description for Company.LanguageSm.EntryAction" Name="EntryAction" DisplayName="Entry Action" Namespace="Company.LanguageSm">
      <BaseClass>
        <DomainClassMoniker Name="Action" />
      </BaseClass>
    </DomainClass>
    <DomainClass Id="c7b2633f-2afa-4b57-a07a-12befb9fb3b8" Description="Description for Company.LanguageSm.ExitAction" Name="ExitAction" DisplayName="Exit Action" Namespace="Company.LanguageSm">
      <BaseClass>
        <DomainClassMoniker Name="Action" />
      </BaseClass>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="044db417-6c12-4e96-be9b-49621aeda129" Description="Embedding relationship between the Model and Elements" Name="StateMachineHasStates" DisplayName="State Machine Has States" Namespace="Company.LanguageSm" IsEmbedding="true">
      <Source>
        <DomainRole Id="4536cb4f-8263-401a-bd17-95ad139011e3" Description="" Name="StateMachine" DisplayName="State Machine" PropertyName="States" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="States">
          <RolePlayer>
            <DomainClassMoniker Name="StateMachine" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="9c044ccf-e9f5-4b2d-b42a-0ad80c7d9a32" Description="" Name="State" DisplayName="State" PropertyName="StateMachine" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="State Machine">
          <RolePlayer>
            <DomainClassMoniker Name="State" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="07d93d21-a85a-401b-be31-d75bea95b093" Description="Reference relationship between Elements." Name="Transition" DisplayName="Transition" Namespace="Company.LanguageSm">
      <Properties>
        <DomainProperty Id="9852150d-387a-4d78-acfb-7db865ecec5e" Description="Description for Company.LanguageSm.Transition.Event" Name="Event" DisplayName="Event">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7333987d-5638-4d54-9f39-2b837e33dc31" Description="Description for Company.LanguageSm.Transition.Condition" Name="Condition" DisplayName="Condition">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7b8d5325-9814-4fd5-be33-eba4b9df6220" Description="Description for Company.LanguageSm.Transition.Action" Name="Action" DisplayName="Action">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="80d3470f-c796-4611-a70d-1668fd911457" Description="Description for Company.LanguageSm.Transition.Label" Name="Label" DisplayName="Label">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
      <Source>
        <DomainRole Id="222d642b-29f1-498f-a091-4ad2253d0e22" Description="Description for Company.LanguageSm.ExampleRelationship.Target" Name="Predecessor" DisplayName="Predecessor" PropertyName="Successors" PropertyDisplayName="Successors">
          <RolePlayer>
            <DomainClassMoniker Name="State" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="336fd61c-e0ba-49cd-b52a-e2d8ea60dc05" Description="Description for Company.LanguageSm.ExampleRelationship.Source" Name="Successor" DisplayName="Successor" PropertyName="Predecessors" PropertyDisplayName="Predecessors">
          <RolePlayer>
            <DomainClassMoniker Name="State" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="76fda1ea-c8b7-4dcf-a73b-cd3b783cdbb4" Description="Description for Company.LanguageSm.StateHasEntryActioned" Name="StateHasEntryActioned" DisplayName="State Has Entry Actioned" Namespace="Company.LanguageSm" IsEmbedding="true">
      <Source>
        <DomainRole Id="bbf1aecf-13c0-468e-97f0-51b2594f058b" Description="Description for Company.LanguageSm.StateHasEntryActioned.State" Name="State" DisplayName="State" PropertyName="EntryActioned" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Entry Actioned">
          <RolePlayer>
            <DomainClassMoniker Name="State" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="98e8bec2-9dcd-4779-9d26-241722e7c19e" Description="Description for Company.LanguageSm.StateHasEntryActioned.EntryAction" Name="EntryAction" DisplayName="Entry Action" PropertyName="State" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="State">
          <RolePlayer>
            <DomainClassMoniker Name="EntryAction" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="cd0307ab-38de-4bed-bc6f-92819f9b1292" Description="Description for Company.LanguageSm.StateHasExitActioned" Name="StateHasExitActioned" DisplayName="State Has Exit Actioned" Namespace="Company.LanguageSm" IsEmbedding="true">
      <Source>
        <DomainRole Id="76325b4d-ebc8-4657-bf7f-83ee4a4696ea" Description="Description for Company.LanguageSm.StateHasExitActioned.State" Name="State" DisplayName="State" PropertyName="ExitActioned" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Exit Actioned">
          <RolePlayer>
            <DomainClassMoniker Name="State" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b6f6eac6-7b09-4225-b78b-d51f21965f4d" Description="Description for Company.LanguageSm.StateHasExitActioned.ExitAction" Name="ExitAction" DisplayName="Exit Action" PropertyName="State" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="State">
          <RolePlayer>
            <DomainClassMoniker Name="ExitAction" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
    <DomainEnumeration Name="StateKind" Namespace="Company.LanguageSm" Description="Description for Company.LanguageSm.StateKind">
      <Literals>
        <EnumerationLiteral Description="Description for Company.LanguageSm.StateKind.Normal" Name="Normal" Value="" />
        <EnumerationLiteral Description="Description for Company.LanguageSm.StateKind.Initial" Name="Initial" Value="" />
        <EnumerationLiteral Description="Description for Company.LanguageSm.StateKind.Final" Name="Final" Value="" />
      </Literals>
    </DomainEnumeration>
  </Types>
  <Shapes>
    <CompartmentShape Id="597db761-cb3b-4780-b7dd-6ec8e1ff7b4b" Description="Description for Company.LanguageSm.StateShape" Name="StateShape" DisplayName="State Shape" Namespace="Company.LanguageSm" FixedTooltipText="State Shape" FillColor="LightBlue" InitialHeight="1" Geometry="RoundedRectangle">
      <ShapeHasDecorators Position="InnerTopRight" HorizontalOffset="0" VerticalOffset="0">
        <ExpandCollapseDecorator Name="ExpandCollapseDecorator1" DisplayName="Expand Collapse Decorator1" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="StartIconDecorator" DisplayName="Start Icon Decorator" DefaultIcon="Resources\Start.emf" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerTopLeft" HorizontalOffset="0" VerticalOffset="0">
        <IconDecorator Name="StopIconDecorator" DisplayName="Stop Icon Decorator" DefaultIcon="Resources\Stop.emf" />
      </ShapeHasDecorators>
      <Compartment FillColor="LightBlue" Name="EntryActions" Title="Entry Actions" />
      <Compartment FillColor="LightBlue" Name="ExitActions" Title="Exit Actions" />
    </CompartmentShape>
  </Shapes>
  <Connectors>
    <Connector Id="141cb834-1960-4317-b86a-939c61559deb" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="TransitionConnector" DisplayName="Transition Connector" Namespace="Company.LanguageSm" FixedTooltipText="Transition Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01">
      <ConnectorHasDecorators Position="TargetTop" OffsetFromShape="0" OffsetFromLine="0">
        <TextDecorator Name="LabelTextDecorator" DisplayName="Label Text Decorator" DefaultText="LabelTextDecorator" />
      </ConnectorHasDecorators>
    </Connector>
  </Connectors>
  <XmlSerializationBehavior Name="LanguageSmSerializationBehavior" Namespace="Company.LanguageSm">
    <ClassData>
      <XmlClassData TypeName="StateMachine" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateMachineMoniker" ElementName="stateMachine" MonikerTypeName="StateMachineMoniker">
        <DomainClassMoniker Name="StateMachine" />
        <ElementData>
          <XmlRelationshipData RoleElementName="states">
            <DomainRelationshipMoniker Name="StateMachineHasStates" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="State" MonikerAttributeName="name" SerializeId="true" MonikerElementName="stateMoniker" ElementName="state" MonikerTypeName="StateMoniker">
        <DomainClassMoniker Name="State" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="State/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="successors">
            <DomainRelationshipMoniker Name="Transition" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="kind">
            <DomainPropertyMoniker Name="State/Kind" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="entryActioned">
            <DomainRelationshipMoniker Name="StateHasEntryActioned" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="exitActioned">
            <DomainRelationshipMoniker Name="StateHasExitActioned" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="StateMachineHasStates" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateMachineHasStatesMoniker" ElementName="stateMachineHasStates" MonikerTypeName="StateMachineHasStatesMoniker">
        <DomainRelationshipMoniker Name="StateMachineHasStates" />
      </XmlClassData>
      <XmlClassData TypeName="Transition" MonikerAttributeName="" SerializeId="true" MonikerElementName="transitionMoniker" ElementName="transition" MonikerTypeName="TransitionMoniker">
        <DomainRelationshipMoniker Name="Transition" />
        <ElementData>
          <XmlPropertyData XmlName="event">
            <DomainPropertyMoniker Name="Transition/Event" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="condition">
            <DomainPropertyMoniker Name="Transition/Condition" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="action">
            <DomainPropertyMoniker Name="Transition/Action" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="label">
            <DomainPropertyMoniker Name="Transition/Label" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TransitionConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="transitionConnectorMoniker" ElementName="transitionConnector" MonikerTypeName="TransitionConnectorMoniker">
        <ConnectorMoniker Name="TransitionConnector" />
      </XmlClassData>
      <XmlClassData TypeName="LanguageSmDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="languageSmDiagramMoniker" ElementName="languageSmDiagram" MonikerTypeName="LanguageSmDiagramMoniker">
        <DiagramMoniker Name="LanguageSmDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="Action" MonikerAttributeName="" SerializeId="true" MonikerElementName="actionMoniker" ElementName="action" MonikerTypeName="ActionMoniker">
        <DomainClassMoniker Name="Action" />
        <ElementData>
          <XmlPropertyData XmlName="label">
            <DomainPropertyMoniker Name="Action/Label" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="code">
            <DomainPropertyMoniker Name="Action/Code" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="EntryAction" MonikerAttributeName="" SerializeId="true" MonikerElementName="entryActionMoniker" ElementName="entryAction" MonikerTypeName="EntryActionMoniker">
        <DomainClassMoniker Name="EntryAction" />
      </XmlClassData>
      <XmlClassData TypeName="ExitAction" MonikerAttributeName="" SerializeId="true" MonikerElementName="exitActionMoniker" ElementName="exitAction" MonikerTypeName="ExitActionMoniker">
        <DomainClassMoniker Name="ExitAction" />
      </XmlClassData>
      <XmlClassData TypeName="StateHasEntryActioned" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateHasEntryActionedMoniker" ElementName="stateHasEntryActioned" MonikerTypeName="StateHasEntryActionedMoniker">
        <DomainRelationshipMoniker Name="StateHasEntryActioned" />
      </XmlClassData>
      <XmlClassData TypeName="StateHasExitActioned" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateHasExitActionedMoniker" ElementName="stateHasExitActioned" MonikerTypeName="StateHasExitActionedMoniker">
        <DomainRelationshipMoniker Name="StateHasExitActioned" />
      </XmlClassData>
      <XmlClassData TypeName="StateShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="stateShapeMoniker" ElementName="stateShape" MonikerTypeName="StateShapeMoniker">
        <CompartmentShapeMoniker Name="StateShape" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="LanguageSmExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="TransitionBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Transition" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="State" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="State" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="c1eeb118-f24f-4770-a6bf-2b2a28d1de29" Description="Description for Company.LanguageSm.LanguageSmDiagram" Name="LanguageSmDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.LanguageSm">
    <Class>
      <DomainClassMoniker Name="StateMachine" />
    </Class>
    <ShapeMaps>
      <CompartmentShapeMap>
        <DomainClassMoniker Name="State" />
        <ParentElementPath>
          <DomainPath>StateMachineHasStates.StateMachine/!StateMachine</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="StateShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="State/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="StateShape/StartIconDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="State/Kind" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Initial" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <DecoratorMap>
          <IconDecoratorMoniker Name="StateShape/StopIconDecorator" />
          <VisibilityPropertyPath>
            <DomainPropertyMoniker Name="State/Kind" />
            <PropertyFilters>
              <PropertyFilter FilteringValue="Final" />
            </PropertyFilters>
          </VisibilityPropertyPath>
        </DecoratorMap>
        <CompartmentShapeMoniker Name="StateShape" />
        <CompartmentMap>
          <CompartmentMoniker Name="StateShape/EntryActions" />
          <ElementsDisplayed>
            <DomainPath>StateHasEntryActioned.EntryActioned/!EntryAction</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Action/Label" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
        <CompartmentMap>
          <CompartmentMoniker Name="StateShape/ExitActions" />
          <ElementsDisplayed>
            <DomainPath>StateHasExitActioned.ExitActioned/!ExitAction</DomainPath>
          </ElementsDisplayed>
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Action/Label" />
            </PropertyPath>
          </PropertyDisplayed>
        </CompartmentMap>
      </CompartmentShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="TransitionConnector" />
        <DomainRelationshipMoniker Name="Transition" />
        <DecoratorMap>
          <TextDecoratorMoniker Name="TransitionConnector/LabelTextDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Transition/Label" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="sm" EditorGuid="451916b3-5078-47ba-a516-765306cb7566">
    <RootClass>
      <DomainClassMoniker Name="StateMachine" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="LanguageSmSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="LanguageSm">
      <ElementTool Name="State" ToolboxIcon="Resources\TaskTool.bmp" Caption="State" Tooltip="Create a State" HelpKeyword="CreateStateClassF1Keyword">
        <DomainClassMoniker Name="State" />
      </ElementTool>
      <ConnectionTool Name="Transition" ToolboxIcon="Resources\FlowTool.bmp" Caption="Transition" Tooltip="Create a Transition" HelpKeyword="ConnectTransitionRelationF1Keyword">
        <ConnectionBuilderMoniker Name="LanguageSm/TransitionBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="LanguageSmDiagram" />
  </Designer>
  <Explorer ExplorerGuid="a9a027ed-b71f-4c67-9f0c-fd886314c6b4" Title="LanguageSm Explorer">
    <ExplorerBehaviorMoniker Name="LanguageSm/LanguageSmExplorer" />
  </Explorer>
</Dsl>