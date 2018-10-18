/*
** partree - Calculate the functional size of user requirements to a 
**  software system.
**
** Copyright © 2016 Frank Hartel, Splitblue Hartel Software, e-Mail: splitblue@outlook.com
** for partree itself:
** Copyright © 2014 Geert van Wittlaer, Email geert.wittlaer@gmx.de
**
** This file is an ad on to partree.
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
*/

/*
** decorateNodes - his script decorates nodes with graphical icons
**  related to their FP Type and kind of enhancement
**
** Version 1.0.0
**
*/

	def rootNode = c.getRootNode();
	return decorate(rootNode);
					
	def decorate(child){
		if (!child.children) {
			def iconEO=new freemind.modes.MindIcon("EO_C");
			def iconEI=new freemind.modes.MindIcon("EI_C");
			def iconEQ=new freemind.modes.MindIcon("EQ_C");
			def iconILF=new freemind.modes.MindIcon("ILF_C");
			def iconEIF=new freemind.modes.MindIcon("EIF_C");
			def iconADD=new freemind.modes.MindIcon("add_C");
			def iconDEL=new freemind.modes.MindIcon("del_C");
			def iconCHANGE=new freemind.modes.MindIcon("change_C");
			def iconNONE=new freemind.modes.MindIcon("none_C");
			
			def type=child.getAttribute("Type");
			def enhance=child.getAttribute("Enhancement");
			
			while(c.removeLastIcon(child)>0);
			if (type!=null){
				switch(type){
					case "EI":  c.addIcon(child,iconEI);
						break;
					case "EO": c.addIcon(child,iconEO);
						break;
					case "EQ": c.addIcon(child,iconEQ);
						break;
					case "ILF": c.addIcon(child,iconILF);
						break;
					case "EIF": c.addIcon(child,iconEIF);
						break;
				};
			};
			
			if (enhance!=null){
				switch(enhance){
					case "add": c.addIcon(child,iconADD);
						break;
					case "change": c.addIcon(child,iconCHANGE);
						break;
					case "delete": c.addIcon(child,iconDEL);
						break;
					case "none": c.addIcon(child,iconNONE);
						break;
				};
			};

			return 0;

		}else{
			def it = child.childrenUnfolded();		
			while(it.hasNext()) { 
				def child2 = it.next(); 
				decorate(child2);
			}
			return 0;
		}
	}