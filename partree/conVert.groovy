/*
** partree - Calculate the functional size of user requirements to a 
**  software system.
**
** Copyright © 2014 Geert van Wittlaer, Email geert.wittlaer@gmx.de
**
** This file is part of partree.
**
** partree is free software: you can redistribute it and/or modify
** it under the terms of the GNU General Public License as published by
** the Free Software Foundation, either version 3 of the License, or
** (at your option) any later version.
**
** partree is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
** GNU General Public License for more details.
**
** You should have received a copy of the GNU General Public License
** along with partree.  If not, see <http://www.gnu.org/licenses/>.
**
*/

/*
**
** conVert - This script converts a baseline into an enhancement count and
**   vice-versa.
**
** Version 0.5.0 (compatible with Freemind 1.0.1)
**
*/

def conVert2Baseline(child, tbdStack) {
/*
** Converts an enhancement count into a baseline
*/

	if (!child.children) {
		/* Transactions & Files */
						
		switch (child.getAttribute("Type")) {
			case "EI": 
			case "EQ": 
			case "EO": 
			case "ILF": 
			case "EIF":
				/*
				**
				** remove leafes with enhancement type "delete"
				**
				*/
				if (child.getAttribute("Enhancement") == "delete") {
					tbdStack.push(child);
				} else {
					c.editAttribute(child, "Enhancement", null);			
				}
				break;				
			default: 
				/* If it is a leaf but type is undefined it is a component leaf */
				break;
		}
		
	} else {
		/* Components */

		/* Loop over all Children */
		def it = child.childrenUnfolded();		
		while(it.hasNext()) { 
			def child2 = it.next(); 
			conVert2Baseline(child2, tbdStack);
		}
	}
	return 0;

}

def conVert2Enhancement(child) {
/*
** Converts baseline or development count into an enhancment count
*/

	if (!child.children) {
		/* Transactions & Files */
						
		switch (child.getAttribute("Type")) {
			case "EI": 
			case "EQ": 
			case "EO": 
			case "ILF": 
			case "EIF":
				c.editAttribute(child, "Enhancement", "none");			
				break;				
			default: 
				/* If it is a leaf but type is undefined it is a component leaf */
				break;
		}
		
	} else {
		/* Components */

		/* Loop over all Children */
		def it = child.childrenUnfolded();		
		while(it.hasNext()) { 
			def child2 = it.next(); 
			conVert2Enhancement(child2);
		}
	}
	return 0;

}

def panePartree(sQuestion, sTitle) {

	def swingBuilder = new SwingBuilder();
	def pane = swingBuilder.optionPane(message:sQuestion, messageType:JOptionPane.PLAIN_MESSAGE, optionType:JOptionPane.OK_CANCEL_OPTION);
	def dialog = pane.createDialog(null, sTitle);
	dialog.show();

	return pane.getValue();
}

/* Main routine commences here: */

import groovy.swing.SwingBuilder;
import javax.swing.*;


def rootNode = c.getRootNode();

switch (rootNode.getAttribute("CountType")) {

	case "Baseline":
		
		def sTitle = "Baseline in Enhancement Count";
		def sQuestion = "Sie sind dabei, die Baseline in einen Enhancement Count umzuwandeln.\nWollen Sie fortfahren?";
	
		if (panePartree(sQuestion, sTitle) == JOptionPane.OK_OPTION) {			

			conVert2Enhancement(rootNode);			
			c.editAttribute(rootNode, "CountType", "Enhancement");
			c.nodeStructureChanged(rootNode);		
		
		}	
		
		break;

	case "Enhancement":
		/*
		** a note on why we use the stack: removing a node spoils the child.next logic so we
		** collect nodes to be deleted in this stack
		*/

		def sTitle = "Enhancement Count in Baseline";
		def sQuestion = "Sie sind dabei, den Enhancement Count in eine Baseline umzuwandeln.\nAls \"deleted\" gekennzeichnete Elemente werden dabei endg\u00fcltig entfernt.\nWollen Sie fortfahren?";
	
		if (panePartree(sQuestion, sTitle) == JOptionPane.OK_OPTION) {		
		
			def tbdStack = new Stack();
			
			conVert2Baseline(rootNode, tbdStack);		
			
			while (!tbdStack.isEmpty()) {
				def current = tbdStack.pop();
				current.removeFromParent();
			}
			
			c.editAttribute(rootNode, "CountType", "Baseline");		
			c.nodeStructureChanged(rootNode);
		
		}

		break;

	default:

		def sTitle = "Neue Baseline anlegen";
		def sQuestion = "Sie sind dabei, die Mindmap in eine Function Point Baseline umzuwandeln.\nWollen Sie fortfahren?";
	
		if (panePartree(sQuestion, sTitle) == JOptionPane.OK_OPTION) {		
			c.editAttribute(rootNode, "CountType", "Baseline");	
			c.nodeStructureChanged(rootNode);	
		}
		break;
}