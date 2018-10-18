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
** toggleEnh - his script toggles the enhancement type for transactions/files
**  in enhancement counts
**
** Version 0.5.0
**
*/

if (c.getRootNode().getAttribute("CountType") == "Enhancement") {

	def current = c.getSelected();

	if (!current.children) {
		switch (current.getAttribute("Type")) {
			case "EI":
			case "EO":
			case "EQ":
			case "ILF":
			case "EIF":
				switch (current.getAttribute("Enhancement")) {
					case "none":
						c.editAttribute(current, "Enhancement", "change");
						break;
					case "change":
						c.editAttribute(current, "Enhancement", "delete");
						break;
					case "delete":
						c.editAttribute(current, "Enhancement", "add");
						break;							
					case "add":
						c.editAttribute(current, "Enhancement", "none");
						break;					
					default:
						c.editAttribute(current, "Enhancement", "change");				
						break;
				}
				break;
			default:
				break;
		}
	}
}