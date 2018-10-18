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
** toggleComp - This script toggles the complexity for transactions/file.
**
** Version 0.5.0
**
*/

def current = c.getSelected();

if (!current.children) {
	switch (current.getAttribute("Type")) {
		case "EI":
		case "EO":
		case "EQ":
			switch (current.getAttribute("Complexity")) {
				case "low":
					c.editAttribute(current, "Complexity", "average");
					break;
				case "average":
					c.editAttribute(current, "Complexity", "high");
					break;
				case "high":
					c.editAttribute(current, "Complexity", "low");
					break;
				default:
					c.editAttribute(current, "Complexity", "average");				
					break;
			}
			break;
		case "ILF":
		case "EIF":
			switch (current.getAttribute("Complexity")) {
				case "low":
					c.editAttribute(current, "Complexity", "average");
					break;
				case "average":
					c.editAttribute(current, "Complexity", "high");
					break;
				case "high":
					c.editAttribute(current, "Complexity", "low");
					break;
				default:
					c.editAttribute(current, "Complexity", "low");				
					break;
			}
			break;
		default:
			break;
	}
}