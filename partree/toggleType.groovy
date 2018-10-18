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
** toggleType - This script toggles the transaction/file type for leafs.
**
** Version 0.5.0
**
*/

def current = c.getSelected();

if (!current.children) {
	switch (current.getAttribute("Type")) {
		case "EI":
			c.editAttribute(current, "Type", "EO");
			break;
		case "EO":
			c.editAttribute(current, "Type", "EQ");
			break;
		case "EQ":
			c.editAttribute(current, "Type", "ILF");
			break;
		case "ILF":
			c.editAttribute(current, "Type", "EIF");
			break;
		case "EIF":
			c.editAttribute(current, "Type", "EI");
			break;			
		default:
			c.editAttribute(current, "Type", "EI");
			/*
			** In an enhancement count, default enhancement type to "add" - we just assume
			** that when we get here, this is a new node (type has not yet been set)
			*/
			if (c.getRootNode().getAttribute("CountType") == "Enhancement") {
				if (current.getAttribute("Enhancement") == null) {
					c.editAttribute(current, "Enhancement", "add");
				}
			}
			break;
	}
}