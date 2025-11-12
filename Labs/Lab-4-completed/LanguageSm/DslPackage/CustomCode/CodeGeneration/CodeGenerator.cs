using Company.LanguageSm.CustomCode.CodeGeneration;
using Microsoft.VisualStudio.TextTemplating.VSHost;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Company.LanguageSm
{
    [System.Runtime.InteropServices.Guid("C69C8BA9-F37A-4DA7-A51E-1BD41F0016DE")]
    public class CodeGenerator : TemplatedCodeGenerator
    {
        protected override byte[] GenerateCode(string inputFileName, string inputFileContent)
        {
            // Replace the supplied file contents with the template we want to run  
            inputFileContent = ASCIIEncoding.UTF8.GetString(CodeGenerationResource.Sm);

            // Substitute the name of the current model file into the template. 
            FileInfo fi = new FileInfo(inputFileName);
            inputFileContent = inputFileContent.Replace("LineCreator-Behavior.sm", fi.Name);
            inputFileContent = inputFileContent.Replace("namespace ShapesTest", "namespace " + FileNamespace);

            // Now just delegate the rest of the work to the base class 
            byte[] data;
            data = base.GenerateCode(inputFileName, inputFileContent);
            byte[] ascii = new byte[data.Length - 3];
            Array.Copy(data, 3, ascii, 0, data.Length - 3);
            return ascii;
        }
    }
}
