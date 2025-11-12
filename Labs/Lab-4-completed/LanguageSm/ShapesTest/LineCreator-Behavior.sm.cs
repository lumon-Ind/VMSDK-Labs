 
 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Windows;
using System.Windows.Input;

namespace ShapesTest
{
    /// <summary> 
    /// Creator for a line 
    /// </summary>
    partial class  LineCreator : Tool
    {
        // States of the tool 
        enum States 
        { 
        WaitFirstPoint,
   WaitSecondPoint,
   Terminated,
   WaitSecondPointWhenCentered   
        }


        /// <summary>current state</summary> 
        States state = States.WaitFirstPoint; 
 
         
          /// <summary>Transition</summary> 
          protected internal override void MouseDown(Point p) 
          { 
           switch(state) 
           { 
                 
    case States.WaitFirstPoint: 
     P1 = P2 = p;
     state = States.WaitSecondPoint;
 
    break; 
     
 
           } 
          } 
         
          /// <summary>Transition</summary> 
          protected internal override void MouseUp(Point p) 
          { 
           switch(state) 
           { 
                 
    case States.WaitSecondPoint: 
     P2 = p;
     Terminate();
 
    break; 
     
 
    case States.WaitSecondPointWhenCentered: 
     P2 = p;
     Terminate();
 
    break; 
     
 
           } 
          } 
         
          /// <summary>Transition</summary> 
          protected internal override void MouseMove(Point p) 
          { 
           switch(state) 
           { 
                 
    case States.WaitSecondPoint: 
     P2 = p;
 
    break; 
     
 
    case States.WaitSecondPointWhenCentered: 
     P2 = p; P1 = SymmetricTo(p);
 
    break; 
     
 
           } 
          } 
         
          /// <summary>Transition</summary> 
          protected internal override void KeyDown(Key k) 
          { 
           switch(state) 
           { 
                 
    case States.WaitSecondPoint: 
     if (k == Key.C)
     {
      Center = P1; P1 = SymmetricTo(P2);
      state = States.WaitSecondPointWhenCentered;
     }
 
    break; 
     
 
           } 
          } 
         
          /// <summary>Transition</summary> 
          protected internal override void KeyUp(Key k) 
          { 
           switch(state) 
           { 
                 
    case States.WaitSecondPointWhenCentered: 
     if (k == Key.C)
     {
      P1 = Center;
      state = States.WaitSecondPoint;
     }
 
    break; 
     
 
           } 
          } 
         
         } 
        }

 