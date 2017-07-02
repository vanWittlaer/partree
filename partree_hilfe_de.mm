<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1407506994280" ID="ID_636558491" MODIFIED="1418304831737" TEXT="Hilfe zu partree">
<node CREATED="1407507245682" ID="ID_1421703359" MODIFIED="1407682030348" POSITION="left" TEXT="Installation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        <font size="2">Installieren Sie FreeMind (von http://freemind.sourceforge.net) </font>
      </li>
      <li>
        <font size="2">Entzippen Sie die Installationsdatei in ein Verzeichnis Ihrer Wahl. </font>
      </li>
      <li>
        <font size="2">Kopieren Sie das Unterverzeichnis &quot;partree&quot; in das Unterverzeichnis &quot;plugins&quot; im Programmverzeichnis von FreeMind. </font>
      </li>
      <li>
        <font size="2">Kopieren Sie die Datei ScriptingEngine.xml in das Unterverzeichnis &quot;plugins&quot; im Programmverzeichnis von FreeMind. Anmerkung: Wenn Sie bereits eine modifizierte Datei ScriptingEngine.xml in Ihrer Installation haben, kopieren Sie in diese nur den entsprechenden Ausschnitt aus der mit partree gelieferten Datei. </font>
      </li>
      <li>
        <font size="2">Kopieren Sie die Datei template.mm in ein Verzeichnis Ihrer Wahl, auf das Sie mit FreeMind zugreifen k&#246;nnen. </font>
      </li>
      <li>
        <font size="2">Starten Sie FreeMind. </font>
      </li>
      <li>
        <font size="2">Kontrollieren Sie, dass im Menu unter &quot;Extras&quot; bzw. &quot;Tools&quot; die f&#252;nf Unterpunkte FP Calculate, FP Convert, FP Toggle Type, FP Toggle Complexity und FP Toggle Enhancement Type vorhanden sind. </font>
      </li>
      <li>
        <font size="2">&#214;ffnen Sie die Datei template.mm und speichern Sie sie unter einem anderen Namen an einem Ort Ihrer Wahl. Sie k&#246;nnen nun mit Ihrer ersten FP-Z&#228;hlung beginnen.</font>
      </li>
    </ol>
  </body>
</html></richcontent>
<node CREATED="1407507290677" ID="ID_1167931963" MODIFIED="1407681535087" TEXT="Systemvoraussetzungen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">FreeMind Version 1.0.1</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407507302884" ID="ID_644423967" MODIFIED="1407859145791" TEXT="Komponenten">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        XML-File f&#252;r die Scripting Engine: ScriptingEngine.xml
      </li>
      <li>
        5 Scripts im Unterverzeichnis partree
      </li>
      <li>
        readme.txt
      </li>
      <li>
        partree_hilfe_de.mm (diese Datei)
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
<node CREATED="1407507317883" ID="ID_756289956" MODIFIED="1407768386803" TEXT="Deinstallation">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        Nicht mehr ben&#246;tigte Dateien (siehe &quot;Komponenten&quot;) aus dem Unterverzeichnis plugins im FreeMind-Programmverzeichnis entfernen.
      </li>
      <li>
        Die Eintr&#228;ge f&#252;r partree aus der Datei ScriptingEngine.xml (ebendort) entfernen.
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1407507331369" ID="ID_150486263" MODIFIED="1407508969693" POSITION="right" TEXT="Grundkonzepte der FPA">
<node CREATED="1407508764004" ID="ID_1663949844" MODIFIED="1407673423321" TEXT="Funktionale Dekomposition">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">Die methodische Grundlage der Function Point Analyse (FPA) ist die funktionale Zerlegung oder Dekomposition. Diese Grundlage hat die FPA mit dem Konzept der Anwendungsf&#228;lle bzw. Use Cases in der Unified Modelling Language (UML) gemeinsam.</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1407673336521" ID="ID_915344586" MODIFIED="1407673404851" TEXT="Elementarprozesse">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">Die funktionale Zerlegung gliedert die Anforderungen an eine Software in elementare Funktionen. Elementar bedeutet in diesem Fall &quot;nicht weiter zerlegbar&quot;, wobei das entscheidende Kriterium hierf&#252;r der fachlich konsistente Systemzustand ist. </font>
    </p>
    <p>
      <font size="2">In der FPA werden elementare Funktionen als Elementarprozesse (elementary process) bezeichnet.</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407673343985" ID="ID_472496565" MODIFIED="1407673348028" TEXT="Transaktionstypen">
<node CREATED="1407859173612" ID="ID_243791881" MODIFIED="1407859176672" TEXT="Eingabe"/>
<node CREATED="1407859177911" ID="ID_1606828911" MODIFIED="1407859179207" TEXT="Ausgabe"/>
<node CREATED="1407859180539" ID="ID_499410328" MODIFIED="1407859182413" TEXT="Abfrage"/>
</node>
</node>
<node CREATED="1407508757078" ID="ID_970628126" MODIFIED="1407665452935" TEXT="Anwendersicht">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="2">Die funktionale Dekomposition und damit die Ermittlung der Functional Size soll nach dem Standard aus der &quot;user view&quot;, also der Anwendersicht, abgeleitet werden. Der Standard verwendet den Begriff &quot;user&quot; weitgehend in einem Sinne, der mit dem Begriff &quot;actor&quot; der UML identisch ist. (Ausnahme: An einigen wenigen Stellen meint der Standard mit dem Begriff &quot;user&quot; den Auftraggeber f&#252;r ein Softwareprojekt. Dies ist aber aus dem Kontext heraus immer klar.) </font>
    </p>
    <p>
      <font size="2">In der Praxis kann diese Forderung so verstanden werden, dass nur diejenigen Anforderungen zu bewerten sind, die der Unterst&#252;tzung der Gesch&#228;ftsprozesse dienen. F&#252;r die Einsch&#228;tzung, was z.B. ein fachlicher konsistenter Zustand des Systems ist, oder eine Menge von pr&#228;sentierten Informationen in sich abgeschlossen sind, ist dann ebenfalls diese Gesch&#228;ftsprozessperspektive zu Grunde zu legen.k</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407508752234" ID="ID_745171656" MODIFIED="1407665848289" TEXT="Anwendung">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Das Konzept der Anwendung in der FPA entspricht dem &quot;system&quot; in der UML. Eine Anwendung ist durch ihre Au&#223;engrenze gekennzeichnet.
    </p>
    <p>
      Im Sinne der FPA ist eine Anwendung eine Menge fachlich zusammenh&#228;ngender Funktionalit&#228;ten. Die Abgrenzung von Anwendungen untereinander soll fachlichen Gr&#252;nden folgen, und auf keinen Fall rein auf technischen Gegebenheiten beruhen (z.B. Client- und Server-Komponenten).
    </p>
    <p>
      In der Praxis wird man sich an den Definitionen der Anwendungen orientieren m&#252;ssen, wie sie in einem Unternehmen bereits vorliegen.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407508773653" ID="ID_1846437066" MODIFIED="1407673329822" TEXT="Daten">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Neben den Transaktionen wertet die FPA auch die geforderten Datenbest&#228;nde (&quot;files&quot;). Der Begriff des Datenbestands entspricht der &quot;class&quot; in der UML.
    </p>
    <p>
      Datenbest&#228;nde werden rein aus fachlicher Sicht identifiziert. Aspekte einer Modellierung (wie z.B. Normalisierung, Generalisierung usw.) im Sinne eines Datenbankmodells sollen nicht ber&#252;cksichtigt werden.
    </p>
  </body>
</html></richcontent>
<node CREATED="1407859158418" ID="ID_1367626356" MODIFIED="1407859164254" TEXT="Interner Datenbestand"/>
<node CREATED="1407859165696" ID="ID_1774560992" MODIFIED="1407859171126" TEXT="Externer Datenbestand"/>
</node>
<node CREATED="1407508785423" ID="ID_483546709" MODIFIED="1407942302472" TEXT="Punktwerte">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Jeder Transaktion und jedem Datenbestand wird ein Punktwert zugeordnet.
    </p>
    <p>
      Anhand von Komplexit&#228;tsmatrizen (DET/FTR bzw. DET/RET) wird f&#252;r jeden Transaktions- und Datenbestandstyp eine &quot;niedrige&quot; (low), &quot;mittlere&quot; (average) oder &quot;hohe&quot; (high) Komplexit&#228;t definiert, und jeder dieser Stufen ein spezifischer Punktwert zugeordnet.
    </p>
  </body>
</html></richcontent>
<node CREATED="1407672987804" ID="ID_501751574" MODIFIED="1407673197507" TEXT="Transaktionen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Dieser ergibt sich f&#252;r Transaktionen aus der Anzahl der verwendeten Felder (data element types - DET) und der verwendeten Datenbest&#228;nde (file types referenced - FTR).
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407672991928" ID="ID_127189276" MODIFIED="1407673205978" TEXT="Datenbest&#xe4;nde">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      F&#252;r Datenbest&#228;nde leitet sich die Komplexit&#228;t aus der Anzahl der enthaltenen Felder (ebenfalls DET) und der enthaltenen Feldgruppen (record element types - RET) ab.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407673000407" ID="ID_1108616579" MODIFIED="1407673183295" TEXT="Rapid-N&#xe4;herung">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In der Praxis kann die Ermittlung der DETs, RETs und FTRs aufw&#228;ndig sein oder, zu fr&#252;hen Entwurfsphasen, auch noch nicht m&#246;glich sein. In diesen F&#228;llen kommt h&#228;ufig ein als &quot;Rapid&quot; bezeichnetes N&#228;herungsverfahren zur Anwendung.<br />Danach wird jeder Transaktion ihr mittlerer Komplexit&#228;tswert zugeordnet und jedem Datenbestand sein niedriger Komplexit&#228;tswert.
    </p>
    <p>
      Die Rapid-N&#228;herung ist auch in <b>partree</b>&#160;implementiert. Wird die Komplexit&#228;t einer Transaktion oder eines Datenbestands nicht explizit angegeben, so setzt <b>partree</b>&#160;jeweils den oben beschriebenen Rapid-Wert ein.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1407508798473" ID="ID_582700295" MODIFIED="1407511995665" TEXT="Standards">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Die Grundregeln und die Anwendung der Function Point Analyse sind im Handbuch &quot;Counting Practices Manual&quot; (kurz CPM) der International Function Point Users Group IFPUG) beschrieben. parseto und diese Dokumentation referenziert auf die zur Zeit (08/2014) aktuelle Version CPM 4.3.1. Dieser Standard wird auch als &quot;IFPUG 4.3.1&quot; bezeichnet.
    </p>
    <p>
      
    </p>
    <p>
      Die im Standard IFPUG 4.3.1 definierten Regeln sind auch als ISO-Standard ISO/IEC 20926 hinterlegt.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1407507253191" ID="ID_534249990" MODIFIED="1407508970816" POSITION="right" TEXT="Bedienung">
<node CREATED="1407508815391" ID="ID_671624449" MODIFIED="1408455192945" TEXT="Neue Counts anlegen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Erzeugen Sie eine neue Mindmap und rufen Sie einmal das Script &quot;FP Convert&quot; aus dem Menu &quot;Extras&quot; (oder &quot;Tools&quot;) auf. Dadurch wird eine Baseline-Z&#228;hlung erzeugt. Jetzt k&#246;nnen Sie ganz normal mit der Bearbeitung Ihrer FP-Z&#228;hlung fortfahren.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407508880420" ID="ID_1542556572" MODIFIED="1407508896459" TEXT="Empfehlungen zur Baumstruktur"/>
<node CREATED="1407508898758" ID="ID_1423808758" MODIFIED="1407859079063" TEXT="Transaktionen und Datenbest&#xe4;nde anlegen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <ol>
      <li>
        <font size="2">Neues Blatt einf&#252;gen </font>
      </li>
      <li>
        <font size="2">ctrl shift t</font>
      </li>
    </ol>
  </body>
</html></richcontent>
</node>
<node CREATED="1407508917985" ID="ID_1873501276" MODIFIED="1407859031459" TEXT="Komplexit&#xe4;t festlegen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ctrl shift x
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407508943545" ID="ID_670911629" MODIFIED="1407859022801" TEXT="Enhancement-Type festlegen">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ctrl shift e
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1407508840258" ID="ID_1852779442" MODIFIED="1407858996231" TEXT="Baseline Counts in Enhancement Counts umwandeln">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Menu &quot;Extras&quot; (oder &quot;Tools&quot;) -&gt; FP Convert
    </p>
    <p>
      
    </p>
    <p>
      Achtung: Alle Transaktionen und Datenbest&#228;nde mit dem Enhancement Type = &quot;delete&quot; werden bei einer Konvertierung in eine Baseline gel&#246;scht!
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1407507273244" ID="ID_1471746085" MODIFIED="1407508714055" POSITION="left" TEXT="Im- und Exports">
<node CREATED="1407508716526" ID="ID_556501614" MODIFIED="1418304983926" TEXT="Function Point WORKBENCH(tm)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Im- und Exports zur Function Point WORKBENCH(tm) k&#246;nnen durch die POENSGEN GmbH (www.poensgen.de) durchgef&#252;hrt werden.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1407598005093" ID="ID_718412191" MODIFIED="1408009419719" POSITION="right" TEXT="Lizenz">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font size="2">partree</font></b><font size="2">&#160;- Calculate the functional size of user requirements to a software system. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">Copyright &#169; 2014 Geert Wittlaer, Email: geert.wittlaer@gmx.de </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">This file is part of <b>partree</b>. </font>
    </p>
    <p>
      
    </p>
    <p>
      <b><font size="2">partree</font></b><font size="2">&#160;is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version. </font>
    </p>
    <p>
      
    </p>
    <p>
      <b><font size="2">partree</font></b><font size="2">&#160;is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.&#160;&#160;See the GNU General Public License for more details. </font>
    </p>
    <p>
      
    </p>
    <p>
      <font size="2">You should have received a copy of the GNU General Public License along with <b>partree</b>.&#160;&#160;If not, see &lt;http://www.gnu.org/licenses/&gt;.</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1407598171459" ID="ID_548674647" MODIFIED="1408455167735" TEXT="GNU General Public License">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <h3 style="text-align: center">
      <font size="2">GNU GENERAL PUBLIC LICENSE </font>
    </h3>
    <p style="text-align: center">
      <font size="2">Version 3, 29 June 2007 </font>
    </p>
    <p>
      <font size="2">Copyright &#169; 2007 Free Software Foundation, Inc. &lt;<a href="http://fsf.org/">http://fsf.org/</a>&gt; </font>
    </p>
    <p>
      <font size="2">Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed. </font>
    </p>
    <h3>
      <a name="preamble">
</a><font size="2">Preamble </font>
    </h3>
    <p>
      <font size="2">The GNU General Public License is a free, copyleft license for software and other kinds of works. </font>
    </p>
    <p>
      <font size="2">The licenses for most software and other practical works are designed to take away your freedom to share and change the works. By contrast, the GNU General Public License is intended to guarantee your freedom to share and change all versions of a program--to make sure it remains free software for all its users. We, the Free Software Foundation, use the GNU General Public License for most of our software; it applies also to any other work released this way by its authors. You can apply it to your programs, too. </font>
    </p>
    <p>
      <font size="2">When we speak of free software, we are referring to freedom, not price. Our General Public Licenses are designed to make sure that you have the freedom to distribute copies of free software (and charge for them if you wish), that you receive source code or can get it if you want it, that you can change the software or use pieces of it in new free programs, and that you know you can do these things. </font>
    </p>
    <p>
      <font size="2">To protect your rights, we need to prevent others from denying you these rights or asking you to surrender the rights. Therefore, you have certain responsibilities if you distribute copies of the software, or if you modify it: responsibilities to respect the freedom of others. </font>
    </p>
    <p>
      <font size="2">For example, if you distribute copies of such a program, whether gratis or for a fee, you must pass on to the recipients the same freedoms that you received. You must make sure that they, too, receive or can get the source code. And you must show them these terms so they know their rights. </font>
    </p>
    <p>
      <font size="2">Developers that use the GNU GPL protect your rights with two steps: (1) assert copyright on the software, and (2) offer you this License giving you legal permission to copy, distribute and/or modify it. </font>
    </p>
    <p>
      <font size="2">For the developers' and authors' protection, the GPL clearly explains that there is no warranty for this free software. For both users' and authors' sake, the GPL requires that modified versions be marked as changed, so that their problems will not be attributed erroneously to authors of previous versions. </font>
    </p>
    <p>
      <font size="2">Some devices are designed to deny users access to install or run modified versions of the software inside them, although the manufacturer can do so. This is fundamentally incompatible with the aim of protecting users' freedom to change the software. The systematic pattern of such abuse occurs in the area of products for individuals to use, which is precisely where it is most unacceptable. Therefore, we have designed this version of the GPL to prohibit the practice for those products. If such problems arise substantially in other domains, we stand ready to extend this provision to those domains in future versions of the GPL, as needed to protect the freedom of users. </font>
    </p>
    <p>
      <font size="2">Finally, every program is threatened constantly by software patents. States should not allow patents to restrict development and use of software on general-purpose computers, but in those that do, we wish to avoid the special danger that patents applied to a free program could make it effectively proprietary. To prevent this, the GPL assures that patents cannot be used to render the program non-free. </font>
    </p>
    <p>
      <font size="2">The precise terms and conditions for copying, distribution and modification follow. </font>
    </p>
    <h3>
      <a name="terms">
</a><font size="2">TERMS AND CONDITIONS </font>
    </h3>
    <h4>
      <a name="section0">
</a><font size="2">0. Definitions. </font>
    </h4>
    <p>
      <font size="2">&#8220;This License&#8221; refers to version 3 of the GNU General Public License. </font>
    </p>
    <p>
      <font size="2">&#8220;Copyright&#8221; also means copyright-like laws that apply to other kinds of works, such as semiconductor masks. </font>
    </p>
    <p>
      <font size="2">&#8220;The Program&#8221; refers to any copyrightable work licensed under this License. Each licensee is addressed as &#8220;you&#8221;. &#8220;Licensees&#8221; and &#8220;recipients&#8221; may be individuals or organizations. </font>
    </p>
    <p>
      <font size="2">To &#8220;modify&#8221; a work means to copy from or adapt all or part of the work in a fashion requiring copyright permission, other than the making of an exact copy. The resulting work is called a &#8220;modified version&#8221; of the earlier work or a work &#8220;based on&#8221; the earlier work. </font>
    </p>
    <p>
      <font size="2">A &#8220;covered work&#8221; means either the unmodified Program or a work based on the Program. </font>
    </p>
    <p>
      <font size="2">To &#8220;propagate&#8221; a work means to do anything with it that, without permission, would make you directly or secondarily liable for infringement under applicable copyright law, except executing it on a computer or modifying a private copy. Propagation includes copying, distribution (with or without modification), making available to the public, and in some countries other activities as well. </font>
    </p>
    <p>
      <font size="2">To &#8220;convey&#8221; a work means any kind of propagation that enables other parties to make or receive copies. Mere interaction with a user through a computer network, with no transfer of a copy, is not conveying. </font>
    </p>
    <p>
      <font size="2">An interactive user interface displays &#8220;Appropriate Legal Notices&#8221; to the extent that it includes a convenient and prominently visible feature that (1) displays an appropriate copyright notice, and (2) tells the user that there is no warranty for the work (except to the extent that warranties are provided), that licensees may convey the work under this License, and how to view a copy of this License. If the interface presents a list of user commands or options, such as a menu, a prominent item in the list meets this criterion. </font>
    </p>
    <h4>
      <a name="section1">
</a><font size="2">1. Source Code. </font>
    </h4>
    <p>
      <font size="2">The &#8220;source code&#8221; for a work means the preferred form of the work for making modifications to it. &#8220;Object code&#8221; means any non-source form of a work. </font>
    </p>
    <p>
      <font size="2">A &#8220;Standard Interface&#8221; means an interface that either is an official standard defined by a recognized standards body, or, in the case of interfaces specified for a particular programming language, one that is widely used among developers working in that language. </font>
    </p>
    <p>
      <font size="2">The &#8220;System Libraries&#8221; of an executable work include anything, other than the work as a whole, that (a) is included in the normal form of packaging a Major Component, but which is not part of that Major Component, and (b) serves only to enable use of the work with that Major Component, or to implement a Standard Interface for which an implementation is available to the public in source code form. A &#8220;Major Component&#8221;, in this context, means a major essential component (kernel, window system, and so on) of the specific operating system (if any) on which the executable work runs, or a compiler used to produce the work, or an object code interpreter used to run it. </font>
    </p>
    <p>
      <font size="2">The &#8220;Corresponding Source&#8221; for a work in object code form means all the source code needed to generate, install, and (for an executable work) run the object code and to modify the work, including scripts to control those activities. However, it does not include the work's System Libraries, or general-purpose tools or generally available free programs which are used unmodified in performing those activities but which are not part of the work. For example, Corresponding Source includes interface definition files associated with source files for the work, and the source code for shared libraries and dynamically linked subprograms that the work is specifically designed to require, such as by intimate data communication or control flow between those subprograms and other parts of the work. </font>
    </p>
    <p>
      <font size="2">The Corresponding Source need not include anything that users can regenerate automatically from other parts of the Corresponding Source. </font>
    </p>
    <p>
      <font size="2">The Corresponding Source for a work in source code form is that same work. </font>
    </p>
    <h4>
      <a name="section2">
</a><font size="2">2. Basic Permissions. </font>
    </h4>
    <p>
      <font size="2">All rights granted under this License are granted for the term of copyright on the Program, and are irrevocable provided the stated conditions are met. This License explicitly affirms your unlimited permission to run the unmodified Program. The output from running a covered work is covered by this License only if the output, given its content, constitutes a covered work. This License acknowledges your rights of fair use or other equivalent, as provided by copyright law. </font>
    </p>
    <p>
      <font size="2">You may make, run and propagate covered works that you do not convey, without conditions so long as your license otherwise remains in force. You may convey covered works to others for the sole purpose of having them make modifications exclusively for you, or provide you with facilities for running those works, provided that you comply with the terms of this License in conveying all material for which you do not control copyright. Those thus making or running the covered works for you must do so exclusively on your behalf, under your direction and control, on terms that prohibit them from making any copies of your copyrighted material outside their relationship with you. </font>
    </p>
    <p>
      <font size="2">Conveying under any other circumstances is permitted solely under the conditions stated below. Sublicensing is not allowed; section 10 makes it unnecessary. </font>
    </p>
    <h4>
      <a name="section3">
</a><font size="2">3. Protecting Users' Legal Rights From Anti-Circumvention Law. </font>
    </h4>
    <p>
      <font size="2">No covered work shall be deemed part of an effective technological measure under any applicable law fulfilling obligations under article 11 of the WIPO copyright treaty adopted on 20 December 1996, or similar laws prohibiting or restricting circumvention of such measures. </font>
    </p>
    <p>
      <font size="2">When you convey a covered work, you waive any legal power to forbid circumvention of technological measures to the extent such circumvention is effected by exercising rights under this License with respect to the covered work, and you disclaim any intention to limit operation or modification of the work as a means of enforcing, against the work's users, your or third parties' legal rights to forbid circumvention of technological measures. </font>
    </p>
    <h4>
      <a name="section4">
</a><font size="2">4. Conveying Verbatim Copies. </font>
    </h4>
    <p>
      <font size="2">You may convey verbatim copies of the Program's source code as you receive it, in any medium, provided that you conspicuously and appropriately publish on each copy an appropriate copyright notice; keep intact all notices stating that this License and any non-permissive terms added in accord with section 7 apply to the code; keep intact all notices of the absence of any warranty; and give all recipients a copy of this License along with the Program. </font>
    </p>
    <p>
      <font size="2">You may charge any price or no price for each copy that you convey, and you may offer support or warranty protection for a fee. </font>
    </p>
    <h4>
      <a name="section5">
</a><font size="2">5. Conveying Modified Source Versions. </font>
    </h4>
    <p>
      <font size="2">You may convey a work based on the Program, or the modifications to produce it from the Program, in the form of source code under the terms of section 4, provided that you also meet all of these conditions: </font>
    </p>
    <ul>
      <li>
        <font size="2">a) The work must carry prominent notices stating that you modified it, and giving a relevant date. </font>
      </li>
      <li>
        <font size="2">b) The work must carry prominent notices stating that it is released under this License and any conditions added under section 7. This requirement modifies the requirement in section 4 to &#8220;keep intact all notices&#8221;. </font>
      </li>
      <li>
        <font size="2">c) You must license the entire work, as a whole, under this License to anyone who comes into possession of a copy. This License will therefore apply, along with any applicable section 7 additional terms, to the whole of the work, and all its parts, regardless of how they are packaged. This License gives no permission to license the work in any other way, but it does not invalidate such permission if you have separately received it. </font>
      </li>
      <li>
        <font size="2">d) If the work has interactive user interfaces, each must display Appropriate Legal Notices; however, if the Program has interactive interfaces that do not display Appropriate Legal Notices, your work need not make them do so. </font>
      </li>
    </ul>
    <p>
      <font size="2">A compilation of a covered work with other separate and independent works, which are not by their nature extensions of the covered work, and which are not combined with it such as to form a larger program, in or on a volume of a storage or distribution medium, is called an &#8220;aggregate&#8221; if the compilation and its resulting copyright are not used to limit the access or legal rights of the compilation's users beyond what the individual works permit. Inclusion of a covered work in an aggregate does not cause this License to apply to the other parts of the aggregate. </font>
    </p>
    <h4>
      <a name="section6">
</a><font size="2">6. Conveying Non-Source Forms. </font>
    </h4>
    <p>
      <font size="2">You may convey a covered work in object code form under the terms of sections 4 and 5, provided that you also convey the machine-readable Corresponding Source under the terms of this License, in one of these ways: </font>
    </p>
    <ul>
      <li>
        <font size="2">a) Convey the object code in, or embodied in, a physical product (including a physical distribution medium), accompanied by the Corresponding Source fixed on a durable physical medium customarily used for software interchange. </font>
      </li>
      <li>
        <font size="2">b) Convey the object code in, or embodied in, a physical product (including a physical distribution medium), accompanied by a written offer, valid for at least three years and valid for as long as you offer spare parts or customer support for that product model, to give anyone who possesses the object code either (1) a copy of the Corresponding Source for all the software in the product that is covered by this License, on a durable physical medium customarily used for software interchange, for a price no more than your reasonable cost of physically performing this conveying of source, or (2) access to copy the Corresponding Source from a network server at no charge. </font>
      </li>
      <li>
        <font size="2">c) Convey individual copies of the object code with a copy of the written offer to provide the Corresponding Source. This alternative is allowed only occasionally and noncommercially, and only if you received the object code with such an offer, in accord with subsection 6b. </font>
      </li>
      <li>
        <font size="2">d) Convey the object code by offering access from a designated place (gratis or for a charge), and offer equivalent access to the Corresponding Source in the same way through the same place at no further charge. You need not require recipients to copy the Corresponding Source along with the object code. If the place to copy the object code is a network server, the Corresponding Source may be on a different server (operated by you or a third party) that supports equivalent copying facilities, provided you maintain clear directions next to the object code saying where to find the Corresponding Source. Regardless of what server hosts the Corresponding Source, you remain obligated to ensure that it is available for as long as needed to satisfy these requirements. </font>
      </li>
      <li>
        <font size="2">e) Convey the object code using peer-to-peer transmission, provided you inform other peers where the object code and Corresponding Source of the work are being offered to the general public at no charge under subsection 6d. </font>
      </li>
    </ul>
    <p>
      <font size="2">A separable portion of the object code, whose source code is excluded from the Corresponding Source as a System Library, need not be included in conveying the object code work. </font>
    </p>
    <p>
      <font size="2">A &#8220;User Product&#8221; is either (1) a &#8220;consumer product&#8221;, which means any tangible personal property which is normally used for personal, family, or household purposes, or (2) anything designed or sold for incorporation into a dwelling. In determining whether a product is a consumer product, doubtful cases shall be resolved in favor of coverage. For a particular product received by a particular user, &#8220;normally used&#8221; refers to a typical or common use of that class of product, regardless of the status of the particular user or of the way in which the particular user actually uses, or expects or is expected to use, the product. A product is a consumer product regardless of whether the product has substantial commercial, industrial or non-consumer uses, unless such uses represent the only significant mode of use of the product. </font>
    </p>
    <p>
      <font size="2">&#8220;Installation Information&#8221; for a User Product means any methods, procedures, authorization keys, or other information required to install and execute modified versions of a covered work in that User Product from a modified version of its Corresponding Source. The information must suffice to ensure that the continued functioning of the modified object code is in no case prevented or interfered with solely because modification has been made. </font>
    </p>
    <p>
      <font size="2">If you convey an object code work under this section in, or with, or specifically for use in, a User Product, and the conveying occurs as part of a transaction in which the right of possession and use of the User Product is transferred to the recipient in perpetuity or for a fixed term (regardless of how the transaction is characterized), the Corresponding Source conveyed under this section must be accompanied by the Installation Information. But this requirement does not apply if neither you nor any third party retains the ability to install modified object code on the User Product (for example, the work has been installed in ROM). </font>
    </p>
    <p>
      <font size="2">The requirement to provide Installation Information does not include a requirement to continue to provide support service, warranty, or updates for a work that has been modified or installed by the recipient, or for the User Product in which it has been modified or installed. Access to a network may be denied when the modification itself materially and adversely affects the operation of the network or violates the rules and protocols for communication across the network. </font>
    </p>
    <p>
      <font size="2">Corresponding Source conveyed, and Installation Information provided, in accord with this section must be in a format that is publicly documented (and with an implementation available to the public in source code form), and must require no special password or key for unpacking, reading or copying. </font>
    </p>
    <h4>
      <a name="section7">
</a><font size="2">7. Additional Terms. </font>
    </h4>
    <p>
      <font size="2">&#8220;Additional permissions&#8221; are terms that supplement the terms of this License by making exceptions from one or more of its conditions. Additional permissions that are applicable to the entire Program shall be treated as though they were included in this License, to the extent that they are valid under applicable law. If additional permissions apply only to part of the Program, that part may be used separately under those permissions, but the entire Program remains governed by this License without regard to the additional permissions. </font>
    </p>
    <p>
      <font size="2">When you convey a copy of a covered work, you may at your option remove any additional permissions from that copy, or from any part of it. (Additional permissions may be written to require their own removal in certain cases when you modify the work.) You may place additional permissions on material, added by you to a covered work, for which you have or can give appropriate copyright permission. </font>
    </p>
    <p>
      <font size="2">Notwithstanding any other provision of this License, for material you add to a covered work, you may (if authorized by the copyright holders of that material) supplement the terms of this License with terms: </font>
    </p>
    <ul>
      <li>
        <font size="2">a) Disclaiming warranty or limiting liability differently from the terms of sections 15 and 16 of this License; or </font>
      </li>
      <li>
        <font size="2">b) Requiring preservation of specified reasonable legal notices or author attributions in that material or in the Appropriate Legal Notices displayed by works containing it; or </font>
      </li>
      <li>
        <font size="2">c) Prohibiting misrepresentation of the origin of that material, or requiring that modified versions of such material be marked in reasonable ways as different from the original version; or </font>
      </li>
      <li>
        <font size="2">d) Limiting the use for publicity purposes of names of licensors or authors of the material; or </font>
      </li>
      <li>
        <font size="2">e) Declining to grant rights under trademark law for use of some trade names, trademarks, or service marks; or </font>
      </li>
      <li>
        <font size="2">f) Requiring indemnification of licensors and authors of that material by anyone who conveys the material (or modified versions of it) with contractual assumptions of liability to the recipient, for any liability that these contractual assumptions directly impose on those licensors and authors. </font>
      </li>
    </ul>
    <p>
      <font size="2">All other non-permissive additional terms are considered &#8220;further restrictions&#8221; within the meaning of section 10. If the Program as you received it, or any part of it, contains a notice stating that it is governed by this License along with a term that is a further restriction, you may remove that term. If a license document contains a further restriction but permits relicensing or conveying under this License, you may add to a covered work material governed by the terms of that license document, provided that the further restriction does not survive such relicensing or conveying. </font>
    </p>
    <p>
      <font size="2">If you add terms to a covered work in accord with this section, you must place, in the relevant source files, a statement of the additional terms that apply to those files, or a notice indicating where to find the applicable terms. </font>
    </p>
    <p>
      <font size="2">Additional terms, permissive or non-permissive, may be stated in the form of a separately written license, or stated as exceptions; the above requirements apply either way. </font>
    </p>
    <h4>
      <a name="section8">
</a><font size="2">8. Termination. </font>
    </h4>
    <p>
      <font size="2">You may not propagate or modify a covered work except as expressly provided under this License. Any attempt otherwise to propagate or modify it is void, and will automatically terminate your rights under this License (including any patent licenses granted under the third paragraph of section 11). </font>
    </p>
    <p>
      <font size="2">However, if you cease all violation of this License, then your license from a particular copyright holder is reinstated (a) provisionally, unless and until the copyright holder explicitly and finally terminates your license, and (b) permanently, if the copyright holder fails to notify you of the violation by some reasonable means prior to 60 days after the cessation. </font>
    </p>
    <p>
      <font size="2">Moreover, your license from a particular copyright holder is reinstated permanently if the copyright holder notifies you of the violation by some reasonable means, this is the first time you have received notice of violation of this License (for any work) from that copyright holder, and you cure the violation prior to 30 days after your receipt of the notice. </font>
    </p>
    <p>
      <font size="2">Termination of your rights under this section does not terminate the licenses of parties who have received copies or rights from you under this License. If your rights have been terminated and not permanently reinstated, you do not qualify to receive new licenses for the same material under section 10. </font>
    </p>
    <h4>
      <a name="section9">
</a><font size="2">9. Acceptance Not Required for Having Copies. </font>
    </h4>
    <p>
      <font size="2">You are not required to accept this License in order to receive or run a copy of the Program. Ancillary propagation of a covered work occurring solely as a consequence of using peer-to-peer transmission to receive a copy likewise does not require acceptance. However, nothing other than this License grants you permission to propagate or modify any covered work. These actions infringe copyright if you do not accept this License. Therefore, by modifying or propagating a covered work, you indicate your acceptance of this License to do so. </font>
    </p>
    <h4>
      <a name="section10">
</a><font size="2">10. Automatic Licensing of Downstream Recipients. </font>
    </h4>
    <p>
      <font size="2">Each time you convey a covered work, the recipient automatically receives a license from the original licensors, to run, modify and propagate that work, subject to this License. You are not responsible for enforcing compliance by third parties with this License. </font>
    </p>
    <p>
      <font size="2">An &#8220;entity transaction&#8221; is a transaction transferring control of an organization, or substantially all assets of one, or subdividing an organization, or merging organizations. If propagation of a covered work results from an entity transaction, each party to that transaction who receives a copy of the work also receives whatever licenses to the work the party's predecessor in interest had or could give under the previous paragraph, plus a right to possession of the Corresponding Source of the work from the predecessor in interest, if the predecessor has it or can get it with reasonable efforts. </font>
    </p>
    <p>
      <font size="2">You may not impose any further restrictions on the exercise of the rights granted or affirmed under this License. For example, you may not impose a license fee, royalty, or other charge for exercise of rights granted under this License, and you may not initiate litigation (including a cross-claim or counterclaim in a lawsuit) alleging that any patent claim is infringed by making, using, selling, offering for sale, or importing the Program or any portion of it. </font>
    </p>
    <h4>
      <a name="section11">
</a><font size="2">11. Patents. </font>
    </h4>
    <p>
      <font size="2">A &#8220;contributor&#8221; is a copyright holder who authorizes use under this License of the Program or a work on which the Program is based. The work thus licensed is called the contributor's &#8220;contributor version&#8221;. </font>
    </p>
    <p>
      <font size="2">A contributor's &#8220;essential patent claims&#8221; are all patent claims owned or controlled by the contributor, whether already acquired or hereafter acquired, that would be infringed by some manner, permitted by this License, of making, using, or selling its contributor version, but do not include claims that would be infringed only as a consequence of further modification of the contributor version. For purposes of this definition, &#8220;control&#8221; includes the right to grant patent sublicenses in a manner consistent with the requirements of this License. </font>
    </p>
    <p>
      <font size="2">Each contributor grants you a non-exclusive, worldwide, royalty-free patent license under the contributor's essential patent claims, to make, use, sell, offer for sale, import and otherwise run, modify and propagate the contents of its contributor version. </font>
    </p>
    <p>
      <font size="2">In the following three paragraphs, a &#8220;patent license&#8221; is any express agreement or commitment, however denominated, not to enforce a patent (such as an express permission to practice a patent or covenant not to sue for patent infringement). To &#8220;grant&#8221; such a patent license to a party means to make such an agreement or commitment not to enforce a patent against the party. </font>
    </p>
    <p>
      <font size="2">If you convey a covered work, knowingly relying on a patent license, and the Corresponding Source of the work is not available for anyone to copy, free of charge and under the terms of this License, through a publicly available network server or other readily accessible means, then you must either (1) cause the Corresponding Source to be so available, or (2) arrange to deprive yourself of the benefit of the patent license for this particular work, or (3) arrange, in a manner consistent with the requirements of this License, to extend the patent license to downstream recipients. &#8220;Knowingly relying&#8221; means you have actual knowledge that, but for the patent license, your conveying the covered work in a country, or your recipient's use of the covered work in a country, would infringe one or more identifiable patents in that country that you have reason to believe are valid. </font>
    </p>
    <p>
      <font size="2">If, pursuant to or in connection with a single transaction or arrangement, you convey, or propagate by procuring conveyance of, a covered work, and grant a patent license to some of the parties receiving the covered work authorizing them to use, propagate, modify or convey a specific copy of the covered work, then the patent license you grant is automatically extended to all recipients of the covered work and works based on it. </font>
    </p>
    <p>
      <font size="2">A patent license is &#8220;discriminatory&#8221; if it does not include within the scope of its coverage, prohibits the exercise of, or is conditioned on the non-exercise of one or more of the rights that are specifically granted under this License. You may not convey a covered work if you are a party to an arrangement with a third party that is in the business of distributing software, under which you make payment to the third party based on the extent of your activity of conveying the work, and under which the third party grants, to any of the parties who would receive the covered work from you, a discriminatory patent license (a) in connection with copies of the covered work conveyed by you (or copies made from those copies), or (b) primarily for and in connection with specific products or compilations that contain the covered work, unless you entered into that arrangement, or that patent license was granted, prior to 28 March 2007. </font>
    </p>
    <p>
      <font size="2">Nothing in this License shall be construed as excluding or limiting any implied license or other defenses to infringement that may otherwise be available to you under applicable patent law. </font>
    </p>
    <h4>
      <a name="section12">
</a><font size="2">12. No Surrender of Others' Freedom. </font>
    </h4>
    <p>
      <font size="2">If conditions are imposed on you (whether by court order, agreement or otherwise) that contradict the conditions of this License, they do not excuse you from the conditions of this License. If you cannot convey a covered work so as to satisfy simultaneously your obligations under this License and any other pertinent obligations, then as a consequence you may not convey it at all. For example, if you agree to terms that obligate you to collect a royalty for further conveying from those to whom you convey the Program, the only way you could satisfy both those terms and this License would be to refrain entirely from conveying the Program. </font>
    </p>
    <h4>
      <a name="section13">
</a><font size="2">13. Use with the GNU Affero General Public License. </font>
    </h4>
    <p>
      <font size="2">Notwithstanding any other provision of this License, you have permission to link or combine any covered work with a work licensed under version 3 of the GNU Affero General Public License into a single combined work, and to convey the resulting work. The terms of this License will continue to apply to the part which is the covered work, but the special requirements of the GNU Affero General Public License, section 13, concerning interaction through a network will apply to the combination as such. </font>
    </p>
    <h4>
      <a name="section14">
</a><font size="2">14. Revised Versions of this License. </font>
    </h4>
    <p>
      <font size="2">The Free Software Foundation may publish revised and/or new versions of the GNU General Public License from time to time. Such new versions will be similar in spirit to the present version, but may differ in detail to address new problems or concerns. </font>
    </p>
    <p>
      <font size="2">Each version is given a distinguishing version number. If the Program specifies that a certain numbered version of the GNU General Public License &#8220;or any later version&#8221; applies to it, you have the option of following the terms and conditions either of that numbered version or of any later version published by the Free Software Foundation. If the Program does not specify a version number of the GNU General Public License, you may choose any version ever published by the Free Software Foundation. </font>
    </p>
    <p>
      <font size="2">If the Program specifies that a proxy can decide which future versions of the GNU General Public License can be used, that proxy's public statement of acceptance of a version permanently authorizes you to choose that version for the Program. </font>
    </p>
    <p>
      <font size="2">Later license versions may give you additional or different permissions. However, no additional obligations are imposed on any author or copyright holder as a result of your choosing to follow a later version. </font>
    </p>
    <h4>
      <a name="section15">
</a><font size="2">15. Disclaimer of Warranty. </font>
    </h4>
    <p>
      <font size="2">THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM &#8220;AS IS&#8221; WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU. SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING, REPAIR OR CORRECTION. </font>
    </p>
    <h4>
      <a name="section16">
</a><font size="2">16. Limitation of Liability. </font>
    </h4>
    <p>
      <font size="2">IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. </font>
    </p>
    <h4>
      <a name="section17">
</a><font size="2">17. Interpretation of Sections 15 and 16. </font>
    </h4>
    <p>
      <font size="2">If the disclaimer of warranty and limitation of liability provided above cannot be given local legal effect according to their terms, reviewing courts shall apply local law that most closely approximates an absolute waiver of all civil liability in connection with the Program, unless a warranty or assumption of liability accompanies a copy of the Program in return for a fee. </font>
    </p>
    <p>
      <font size="2">END OF TERMS AND CONDITIONS </font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
