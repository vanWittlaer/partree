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
** calcSize - This script calculates the functional size for a count whenever
**   the tree is updated.
**
** Version 0.5.0
**
*/

class MyNodeListener implements freemind.modes.ModeController.NodeSelectionListener {
	freemind.modes.mindmapmode.MindMapController c;
	MyNodeListener(freemind.modes.mindmapmode.MindMapController con) {
		this.c = con;
	}

	/** 
	 * Sent, if a node is changed
	 * */
	void onUpdateNodeHook(freemind.modes.MindMapNode node){

	
		def rootNode = c.getRootNode();
		def sCountType = rootNode.getAttribute("CountType");
	
		switch (sCountType) {
		
			case "Enhancement":
			case "Baseline":		
				calcSize(rootNode, sCountType);	
				break;		
			
			case "Development":			
			default:
				break;				
		}		

	};

	/* saved or new node */
	void onSaveNode(freemind.modes.MindMapNode node){};

	/* other methods */
	void onSelectionChange(freemind.view.mindmapview.NodeView node, boolean mySelection){};
	void onFocusNode(freemind.view.mindmapview.NodeView node){};
	void onLostFocusNode(freemind.view.mindmapview.NodeView node){};	
	
	/* Actual code starts here */

	def calcSize(child, sCountType) {

		def iSize = 0;
		def sType = child.getAttribute("Type");
		def sComp = child.getAttribute("Complexity");
			
		if (!child.children) {
			/* Transactions & Files */
			
			switch (sCountType) {
				case "Enhancement":
					/* For an enhancement project, count "add", "change", "delete" only */
					switch (child.getAttribute("Enhancement")) {
						case "add":		
						case "change":
						case "delete":						
							break;
						case "none":
							return 0;							
						default:
							return 0;
					}
					break;
				case "Development":
				case "Baseline":					
				default:
					/* For baselines and development projects every leaf is counted */				
					break;				
			}

			/* 
			** If we made it to here, we know this leaf is to be sized 
			*/
			
			/* Make it a "bubble" by default */
			child.style = "bubble";			
		
			/* Calculate complexity based on transaction/file type and complexity */
			
			switch (sType) {
				case "EI": 
					switch (sComp) {
						case "low": iSize = 3; break;
						case "average": iSize = 4; break;
						case "high": iSize = 6; break;
						default: iSize = 4; break;
					}
					break;
				case "EQ": 
					switch (sComp) {
						case "low": iSize = 3; break;
						case "average": iSize = 4; break;
						case "high": iSize = 6; break;
						default: iSize = 4; break;
					}
					break;
				case "EO": 
					switch (sComp) {
						case "low": iSize = 4; break;
						case "average": iSize = 5; break;
						case "high": iSize = 7; break;
						default: iSize = 5; break;
					}
					break;
				case "ILF": 
					switch (sComp) {
						case "low": iSize = 7; break;
						case "average": iSize = 10; break;
						case "high": iSize = 15; break;
						default: iSize = 7; break;
					}
					break;
				case "EIF": 
					switch (sComp) {
						case "low": iSize = 5; break;
						case "average": iSize = 7; break;
						case "high": iSize = 10; break;
						default: iSize = 5; break;
					}
					break;				
				default: 
					/* If it is a leaf but type is undefined it is a component leaf */
					child.style = "fork";
					/* and remove attributes */
					c.editAttribute(child, "Size", null);
					c.editAttribute(child, "Complexity", null);	
					c.editAttribute(child, "Enhancement", null);							
					return 0;
			}
					
				/* Multiplier */
				def sMult = child.getAttribute("Multiplier");
				if (sMult != null) {
					iSize = iSize * Integer.parseInt(sMult);
				}
					
				/* Set Size in Node */
				c.editAttribute(child, "Size", String.format("%,d", iSize));

			
			return iSize;
			
		} else {
		
			/* Components */
		
			/* Make it a "fork" */
			child.style = "fork";
		
			/* Loop over all Children */
			def it = child.childrenUnfolded();		
			while(it.hasNext()) { 
				def child2 = it.next(); 
				iSize += calcSize(child2, sCountType);
			}
			
			/* Set Size in Component and reset all other attributes */
			if (iSize > 0) {
				c.editAttribute(child, "Size", String.format("%,d", iSize));
			} else {
				c.editAttribute(child, "Size", null);			
			}
			c.editAttribute(child, "Type", null);				
			c.editAttribute(child, "Complexity", null);	
			c.editAttribute(child, "Enhancement", null);				
			
			return iSize;

		}

	}
}

/*
** Register the hooks - this code was taken from the examples provided by the FreeMind Scripting Engine
*/
def cookieKey = "partree_listener";
if (cookies.get(cookieKey) != null) {
	c.deregisterNodeSelectionListener(cookies.get(cookieKey));
}
def newListener = new MyNodeListener(c);
cookies.put(cookieKey, newListener);
c.registerNodeSelectionListener(newListener, false);