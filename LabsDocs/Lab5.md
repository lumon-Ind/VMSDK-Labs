# VMSDK - DSL Lab 5

Visual Studio Modeling SDK

In the previous parts we showed you how to create a DSL by using the VMSDK wizard (part 1), then we modified it to create our own metamodel and graphical syntax (part 2) for a final-state automaton. We then improved it (part 3), first by personalizing the UI, then by adding validation rules and validation of the model. Then (part 4), we generated the code that corresponds to our model, and created a custom tool.

We will finish this Lab by installing the DSL on any computer that has a copy of Visual Studio.

## Deploying the VSIX

There are several ways in which you can improve your DSL, but when you are satisfied with it, you no doubt want to be able to offer it to your colleagues or customers. The DSLPackage project encapsulates the DSL in a Visual Studio Integration Extension (VSIX).

- Build the Release of your DSL solution.
- Find $(SolutionDir)\DslPackage\bin\Release\*.vsix
  - In Visual Studio, right-click the tab at the top of any file window, and then click **Open Containing Folder**.
- Copy the .vsix file to another computer on which Visual Studio is installed. Or leave it in place to install on your computer, so that it is available to the main instance of Visual Studio.
- In Windows Explorer, double-click the file. Close and re-open Visual Studio.
- You can now create and edit model files from the LanguageSm template, in a main instance of Visual Studio.
- To uninstall the DSL, on the Tools menu, click Extension Manager.

> [!TIP]
> You can add other components to the VSIX. For more information see [Visual Studio Integration Extension](http://go.microsoft.com/fwlink/?LinkId=160780) (VSIX).

