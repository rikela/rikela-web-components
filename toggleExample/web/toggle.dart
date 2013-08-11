import 'dart:html';
import 'package:web_ui/web_ui.dart';
/*
Copyright 2013 Rike Langrehr

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  
 Icons by Yusuke Kamiyamane. Licensed under a Creative Commons Attribution 3.0 License.
*/

class Toggle extends WebComponent 
{
  bool isExpanded = true;
  String name = "";

  onToggle()
  {
    isExpanded = !isExpanded;
  
    for (Element element in elements)
    {      
      Element contentElement = this.query(".content"); 
      if (null != contentElement)
      {
        if (isExpanded)
          contentElement.style.display ="block";
        else
          contentElement.style.display ="none";
      }
    }
    
      InputElement toggleElement = this.query(".toggle") as InputElement;
      if (null != toggleElement)
        if (isExpanded)
          toggleElement.src = "../images/toggle-expand-icon.png"; 
      
        else
          toggleElement.src = "../images/toggle-icon.png";  
  }
        
  Toggle()
  {
  }
}