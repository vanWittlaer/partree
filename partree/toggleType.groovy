/*
** partree - Calculate the functional size of user requirements to a 
**  software system.
**
** Copyright © 2016 Frank Hartel, Splitblue Hartel Software, e-Mail: splitblue@outlook.com
** for partree itself:
** Copyright © 2014 Geert van Wittlaer, Email geert.wittlaer@gmx.de
**
** This file is part of partree. It was enhanced by Frank Hartel with the capability
** to show graphical Icons related to the Type and Enhancement 
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
** toggleType - This script toggles the transaction/file type for leafs.
**
** Version 1.0.0
**
*/

def allCurrent=c.getSelecteds();
for (int z=0;z<allCurrent.size();z++){
	   
	def current = allCurrent.get(z);
	
	def iconEO=new freemind.modes.MindIcon("EO_C");
	def iconEI=new freemind.modes.MindIcon("EI_C");
	def iconEQ=new freemind.modes.MindIcon("EQ_C");
	def iconILF=new freemind.modes.MindIcon("ILF_C");
	def iconEIF=new freemind.modes.MindIcon("EIF_C");
	def iconADD=new freemind.modes.MindIcon("add_C");
	def iconDEL=new freemind.modes.MindIcon("del_C");
	def iconCHANGE=new freemind.modes.MindIcon("change_C");
	def iconNONE=new freemind.modes.MindIcon("none_C");

	if (!current.children) {
		while(c.removeLastIcon(current)>0);
		switch (current.getAttribute("Type")) {
			case "EI":
				c.editAttribute(current, "Type", "EO");
				c.addIcon(current,iconEO);
				break;
			case "EO":
				c.editAttribute(current, "Type", "EQ");
				c.addIcon(current,iconEQ);
				break;
			case "EQ":
				c.editAttribute(current, "Type", "ILF");
				c.addIcon(current,iconILF);
				break;
			case "ILF":
				c.editAttribute(current, "Type", "EIF");
				c.addIcon(current,iconEIF);
				break;
			case "EIF":
				c.editAttribute(current, "Type", null);
				if (c.getRootNode().getAttribute("CountType") == "Enhancement") {
					c.editAttribute(current, "Enhancement", null);
				}
				break;			
			default:
				c.editAttribute(current, "Type", "EI");
				c.addIcon(current,iconEI);
				if(c.getRootNode().getAttribute("CountType") == "Enhancement") {
					c.editAttribute(current, "Enhancement", "add");
				}
				break;
		}
		if (c.getRootNode().getAttribute("CountType") == "Enhancement") {
			if (current.getAttribute("Enhancement") != null) {
				switch (current.getAttribute("Enhancement")) {
					case "none":
						c.addIcon(current,iconNONE);
						break;
					case "change":
						c.addIcon(current,iconCHANGE);
						break;
					case "delete":
						c.addIcon(current,iconDEL);
						break;							
					case "add":
						c.addIcon(current,iconADD);
						break;					
					default:
						break;
				}
			}
		}		
	}
}