<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="7712ef36-317a-48fa-9c77-e5cb8b1f3dfb" Description="Description for Company.FamilyTree.FamilyTree" Name="FamilyTree" DisplayName="FamilyTree" Namespace="Company.FamilyTree" ProductName="FamilyTree" CompanyName="Company" PackageGuid="215edc66-3daf-4b36-ae2a-56ad2ca4a42c" PackageNamespace="Company.FamilyTree" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="78ed6f67-c2eb-4476-bfb0-e4cdca0c829a" Description="The root in which all other elements are embedded. Appears as a diagram." Name="FamilyTreeModel" DisplayName="Family Tree Model" Namespace="Company.FamilyTree">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="Person" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FamilyTreeModelHasPeople.People</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="Town" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FamilyTreeModelHasTowns.Towns</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="04449483-b86d-4723-a865-2a3721abfec7" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="Person" DisplayName="Person" Namespace="Company.FamilyTree">
      <Properties>
        <DomainProperty Id="d6caa105-e0f4-43ec-acf0-1c56033c2cbb" Description="Description for Company.FamilyTree.Person.Name" Name="Name" DisplayName="Name" DefaultValue="" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="c5a2cc51-ef01-40d4-9934-2a4808d85fd2" Description="Description for Company.FamilyTree.Person.Birth Year" Name="BirthYear" DisplayName="Birth Year">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2f867d1d-0dfd-4ed7-b335-a477586b0701" Description="Description for Company.FamilyTree.Person.Death Year" Name="DeathYear" DisplayName="Death Year">
          <Type>
            <ExternalTypeMoniker Name="/System/Int32" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="33d96736-103a-44b9-a868-cd405566936c" Description="Description for Company.FamilyTree.Town" Name="Town" DisplayName="Town" Namespace="Company.FamilyTree">
      <Properties>
        <DomainProperty Id="1b2efb7e-4fcc-43be-9c97-4f0c8e88e91c" Description="Description for Company.FamilyTree.Town.Name" Name="Name" DisplayName="Name">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="a3b6bb48-3a25-4b02-97ec-7cd6b9247e08" Description="Embedding relationship between the Model and Elements" Name="FamilyTreeModelHasPeople" DisplayName="Family Tree Model Has People" Namespace="Company.FamilyTree" IsEmbedding="true">
      <Source>
        <DomainRole Id="6351de67-6861-43d8-a030-1018a859917a" Description="" Name="FamilyTreeModel" DisplayName="Family Tree Model" PropertyName="People" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="People">
          <RolePlayer>
            <DomainClassMoniker Name="FamilyTreeModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="a868bcc3-3584-4c93-bd82-b50272d3fc77" Description="" Name="Element" DisplayName="Element" PropertyName="FamilyTreeModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Family Tree Model">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="81fc74ee-035b-4186-a143-3c71dce19917" Description="Reference relationship between Elements." Name="ParentsHaveChildren" DisplayName="Parents Have Children" Namespace="Company.FamilyTree">
      <Source>
        <DomainRole Id="b95d514e-269b-4f89-9872-2956b6f14a19" Description="Description for Company.FamilyTree.ExampleRelationship.Target" Name="Parent" DisplayName="Parent" PropertyName="Children" PropertyDisplayName="Children">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="54ec191b-397a-48ba-9e79-2f0c4c20e5c8" Description="Description for Company.FamilyTree.ExampleRelationship.Source" Name="Child" DisplayName="Child" PropertyName="Parents" PropertyDisplayName="Parents">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="111311c1-4259-4422-880f-a2bf4b09fd5b" Description="Description for Company.FamilyTree.FamilyTreeModelHasTowns" Name="FamilyTreeModelHasTowns" DisplayName="Family Tree Model Has Towns" Namespace="Company.FamilyTree" IsEmbedding="true">
      <Source>
        <DomainRole Id="5f0764eb-a7ab-4351-9c43-61e1a2858dc6" Description="Description for Company.FamilyTree.FamilyTreeModelHasTowns.FamilyTreeModel" Name="FamilyTreeModel" DisplayName="Family Tree Model" PropertyName="Towns" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Towns">
          <RolePlayer>
            <DomainClassMoniker Name="FamilyTreeModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="de0959b3-7e7c-40a5-861e-65a8ae3f1228" Description="Description for Company.FamilyTree.FamilyTreeModelHasTowns.Town" Name="Town" DisplayName="Town" PropertyName="FamilyTreeModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Family Tree Model">
          <RolePlayer>
            <DomainClassMoniker Name="Town" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c27badf0-91a7-42af-a459-ea14196dc2e9" Description="Description for Company.FamilyTree.Residence" Name="Residence" DisplayName="Residence" Namespace="Company.FamilyTree">
      <Source>
        <DomainRole Id="5a53f5ea-0a91-4453-bf61-db6a5980664b" Description="Description for Company.FamilyTree.Residence.Town" Name="Town" DisplayName="Town" PropertyName="Residents" PropertyDisplayName="Residents">
          <RolePlayer>
            <DomainClassMoniker Name="Town" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="b0e3cff7-7a58-481f-8db7-72ba62cd05eb" Description="Description for Company.FamilyTree.Residence.Person" Name="Person" DisplayName="Person" PropertyName="Residences" PropertyDisplayName="Residences">
          <RolePlayer>
            <DomainClassMoniker Name="Person" />
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
  </Types>
  <Shapes>
    <GeometryShape Id="b03708e1-fd73-4048-9d50-af511d53acea" Description="Shape used to represent ExampleElements on a Diagram." Name="PersonShape" DisplayName="Person Shape" Namespace="Company.FamilyTree" FixedTooltipText="Person Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="RoundedRectangle">
      <Notes>The shape has a text decorator used to display the Name property of the mapped ExampleElement.</Notes>
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomLeft" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="BirthDecorator" DisplayName="Birth Decorator" DefaultText="BirthDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomRight" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="DeathDecorator" DisplayName="Death Decorator" DefaultText="DeathDecorator" />
      </ShapeHasDecorators>
      <ShapeHasDecorators Position="InnerBottomCenter" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="Dash" DisplayName="Dash" DefaultText="--" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="3c7b8d88-d1d0-4e00-a70c-cf48229483ff" Description="Description for Company.FamilyTree.TownShape" Name="TownShape" DisplayName="Town Shape" Namespace="Company.FamilyTree" FixedTooltipText="Town Shape" FillColor="LightGreen" InitialHeight="1" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NameDecorator" DisplayName="Name Decorator" DefaultText="NameDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="2361a40b-031f-490f-befb-408b3d3bac03" Description="Connector between the ExampleShapes. Represents ExampleRelationships on the Diagram." Name="ChildConnector" DisplayName="Child Connector" Namespace="Company.FamilyTree" FixedTooltipText="Child Connector" Color="113, 111, 110" TargetEndStyle="EmptyArrow" Thickness="0.01" />
    <Connector Id="60e84f48-8e92-4e64-a916-77ee2cc1c00e" Description="Description for Company.FamilyTree.ResidenceConnector" Name="ResidenceConnector" DisplayName="Residence Connector" Namespace="Company.FamilyTree" FixedTooltipText="Residence Connector" />
  </Connectors>
  <XmlSerializationBehavior Name="FamilyTreeSerializationBehavior" Namespace="Company.FamilyTree">
    <ClassData>
      <XmlClassData TypeName="FamilyTreeModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeModelMoniker" ElementName="familyTreeModel" MonikerTypeName="FamilyTreeModelMoniker">
        <DomainClassMoniker Name="FamilyTreeModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="people">
            <DomainRelationshipMoniker Name="FamilyTreeModelHasPeople" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="towns">
            <DomainRelationshipMoniker Name="FamilyTreeModelHasTowns" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Person" MonikerAttributeName="name" SerializeId="true" MonikerElementName="personMoniker" ElementName="person" MonikerTypeName="PersonMoniker">
        <DomainClassMoniker Name="Person" />
        <ElementData>
          <XmlPropertyData XmlName="name" IsMonikerKey="true">
            <DomainPropertyMoniker Name="Person/Name" />
          </XmlPropertyData>
          <XmlRelationshipData RoleElementName="children">
            <DomainRelationshipMoniker Name="ParentsHaveChildren" />
          </XmlRelationshipData>
          <XmlPropertyData XmlName="birthYear">
            <DomainPropertyMoniker Name="Person/BirthYear" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="deathYear">
            <DomainPropertyMoniker Name="Person/DeathYear" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FamilyTreeModelHasPeople" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeModelHasPeopleMoniker" ElementName="familyTreeModelHasPeople" MonikerTypeName="FamilyTreeModelHasPeopleMoniker">
        <DomainRelationshipMoniker Name="FamilyTreeModelHasPeople" />
      </XmlClassData>
      <XmlClassData TypeName="ParentsHaveChildren" MonikerAttributeName="" SerializeId="true" MonikerElementName="parentsHaveChildrenMoniker" ElementName="parentsHaveChildren" MonikerTypeName="ParentsHaveChildrenMoniker">
        <DomainRelationshipMoniker Name="ParentsHaveChildren" />
      </XmlClassData>
      <XmlClassData TypeName="PersonShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="personShapeMoniker" ElementName="personShape" MonikerTypeName="PersonShapeMoniker">
        <GeometryShapeMoniker Name="PersonShape" />
      </XmlClassData>
      <XmlClassData TypeName="ChildConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="childConnectorMoniker" ElementName="childConnector" MonikerTypeName="ChildConnectorMoniker">
        <ConnectorMoniker Name="ChildConnector" />
      </XmlClassData>
      <XmlClassData TypeName="FamilyTreeDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeDiagramMoniker" ElementName="familyTreeDiagram" MonikerTypeName="FamilyTreeDiagramMoniker">
        <DiagramMoniker Name="FamilyTreeDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="FamilyTreeModelHasTowns" MonikerAttributeName="" SerializeId="true" MonikerElementName="familyTreeModelHasTownsMoniker" ElementName="familyTreeModelHasTowns" MonikerTypeName="FamilyTreeModelHasTownsMoniker">
        <DomainRelationshipMoniker Name="FamilyTreeModelHasTowns" />
      </XmlClassData>
      <XmlClassData TypeName="Town" MonikerAttributeName="" SerializeId="true" MonikerElementName="townMoniker" ElementName="town" MonikerTypeName="TownMoniker">
        <DomainClassMoniker Name="Town" />
        <ElementData>
          <XmlPropertyData XmlName="name">
            <DomainPropertyMoniker Name="Town/Name" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="residents">
            <DomainRelationshipMoniker Name="Residence" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="Residence" MonikerAttributeName="" SerializeId="true" MonikerElementName="residenceMoniker" ElementName="residence" MonikerTypeName="ResidenceMoniker">
        <DomainRelationshipMoniker Name="Residence" />
      </XmlClassData>
      <XmlClassData TypeName="TownShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="townShapeMoniker" ElementName="townShape" MonikerTypeName="TownShapeMoniker">
        <GeometryShapeMoniker Name="TownShape" />
      </XmlClassData>
      <XmlClassData TypeName="ResidenceConnector" MonikerAttributeName="" SerializeId="true" MonikerElementName="residenceConnectorMoniker" ElementName="residenceConnector" MonikerTypeName="ResidenceConnectorMoniker">
        <ConnectorMoniker Name="ResidenceConnector" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="FamilyTreeExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="ParentsHaveChildrenBuilder">
      <Notes>Provides for the creation of an ExampleRelationship by pointing at two ExampleElements.</Notes>
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="ParentsHaveChildren" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Person" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Person" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="ResidenceBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="Residence" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Town" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="Person" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="831bb18f-6dc8-4a38-bca5-2f6feed67dcd" Description="Description for Company.FamilyTree.FamilyTreeDiagram" Name="FamilyTreeDiagram" DisplayName="Minimal Language Diagram" Namespace="Company.FamilyTree">
    <Class>
      <DomainClassMoniker Name="FamilyTreeModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap>
        <DomainClassMoniker Name="Person" />
        <ParentElementPath>
          <DomainPath>FamilyTreeModelHasPeople.FamilyTreeModel/!FamilyTreeModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PersonShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Person/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PersonShape/BirthDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Person/BirthYear" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="PersonShape/DeathDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Person/DeathYear" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="PersonShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="Town" />
        <ParentElementPath>
          <DomainPath>FamilyTreeModelHasTowns.FamilyTreeModel/!FamilyTreeModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TownShape/NameDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="Town/Name" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="TownShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ChildConnector" />
        <DomainRelationshipMoniker Name="ParentsHaveChildren" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ResidenceConnector" />
        <DomainRelationshipMoniker Name="Residence" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="ftree" EditorGuid="b28b1948-544e-42a9-ac7c-bd80b34466c8">
    <RootClass>
      <DomainClassMoniker Name="FamilyTreeModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="FamilyTreeSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="FamilyTree">
      <ElementTool Name="Person" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Person" Tooltip="Create an ExampleElement" HelpKeyword="CreateExampleClassF1Keyword">
        <DomainClassMoniker Name="Person" />
      </ElementTool>
      <ConnectionTool Name="ChildLink" ToolboxIcon="resources\exampleconnectortoolbitmap.bmp" Caption="Child Link" Tooltip="Drag between ExampleElements to create an ExampleRelationship" HelpKeyword="ConnectExampleRelationF1Keyword">
        <ConnectionBuilderMoniker Name="FamilyTree/ParentsHaveChildrenBuilder" />
      </ConnectionTool>
      <ElementTool Name="Town" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Town" Tooltip="Town" HelpKeyword="Town">
        <DomainClassMoniker Name="Town" />
      </ElementTool>
      <ConnectionTool Name="ResidenceLink" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Residence Link" Tooltip="Residence Link" HelpKeyword="ResidenceLink">
        <ConnectionBuilderMoniker Name="FamilyTree/ResidenceBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="true" UsesLoad="false" />
    <DiagramMoniker Name="FamilyTreeDiagram" />
  </Designer>
  <Explorer ExplorerGuid="d2a34ab1-efa7-4e16-b980-b8d56980e331" Title="FamilyTree Explorer">
    <ExplorerBehaviorMoniker Name="FamilyTree/FamilyTreeExplorer" />
  </Explorer>
</Dsl>