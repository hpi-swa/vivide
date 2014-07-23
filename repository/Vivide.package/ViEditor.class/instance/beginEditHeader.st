actions - header
beginEditHeader

	| editor |
	self grabKeyboard.
	
	editor := UiLineEdit new
		hideCursor: false;
		outerBorderWidth: 0;
		font: UiPlatform current standardButtonFont;
		theText: self headerText;
		selectAll.
		
	editor width: self ui headerBtn width.
	self header addMorph: editor inFrontOf: self ui headerBtn.
	self ui headerBtn hideFull.
	
	self connect: editor signal: #returnPressed: toSelector: #endEditHeader:accept: pattern: #(0 =true).
	self connect: editor signal: #escapePressed: toSelector: #endEditHeader:accept: pattern: #(0 =false).