memento - cleanup
clear

	super clear.
	
	tag
		ifNil: [
			self ui iconBtn icon: ViIconService blankIcon.
			self ui tagnameEdit theText: ''.
			self ui descriptionEdit theText: '']
		ifNotNil: [
			self ui iconBtn icon: (tag icon ifNil: [ViIconService blankIcon]).
			self ui tagnameEdit theText: tag tagname.
			self ui descriptionEdit theText: tag description].