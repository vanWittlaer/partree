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

	def allCurrent=c.getSelecteds();
    def iconEO=new freemind.modes.MindIcon("EO_C");
    def iconEI=new freemind.modes.MindIcon("EI_C");
    def iconEQ=new freemind.modes.MindIcon("EQ_C");
    def iconILF=new freemind.modes.MindIcon("ILF_C");
    def iconEIF=new freemind.modes.MindIcon("EIF_C");
	def iconADD=new freemind.modes.MindIcon("add_C");
    def iconDEL=new freemind.modes.MindIcon("del_C");
    def iconCHANGE=new freemind.modes.MindIcon("change_C");
	def iconNONE=new freemind.modes.MindIcon("none_C");
	for (int z=0;z<allCurrent.size();z++){
		def current = allCurrent.get(z);
		def nodetext=current.getShortText(c);
		current.style = "fork";	
			
		def res=c.addNewNode(current,-1,current.isLeft());
		res.style="bubble";
		c.editAttribute(res, "Type", "EI");
		res.setText(nodetext + " CREATE");
		c.addIcon(res,iconEI);
		if (c.getRootNode().getAttribute("CountType") == "Enhancement") {
				c.editAttribute(res, "Enhancement", "add");
				c.addIcon(res,iconADD);
		}
		
		res=c.addNewNode(current,-1,current.isLeft());
		res.style="bubble";
		c.editAttribute(res, "Type", "EI");
		res.setText(nodetext + " UPDATE");
		c.addIcon(res,iconEI);
		if (c.getRootNode().getAttribute("CountType") == "Enhancement") {
				c.editAttribute(res, "Enhancement", "add");
				c.addIcon(res,iconADD);
		}
		
		res=c.addNewNode(current,-1,current.isLeft());
		res.style="bubble";
		c.editAttribute(res, "Type", "EI");
		res.setText(nodetext + " DELETE");
		c.addIcon(res,iconEI);
		if (c.getRootNode().getAttribute("CountType") == "Enhancement") {
				c.editAttribute(res, "Enhancement", "add");
				c.addIcon(res,iconADD);
		}
		
		res=c.addNewNode(current,-1,current.isLeft());
		res.style="bubble";
		c.editAttribute(res, "Type", "EQ");
		res.setText(nodetext + " READ (VIEW)");
		c.addIcon(res,iconEQ);
		if (c.getRootNode().getAttribute("CountType") == "Enhancement") {
				c.editAttribute(res, "Enhancement", "add");
				c.addIcon(res,iconADD);
		}
	}
