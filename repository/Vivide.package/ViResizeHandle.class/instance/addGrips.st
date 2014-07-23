initialization
addGrips

	| container |
	container := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: (self orientation = #vertical ifTrue: [#topToBottom] ifFalse: [#leftToRight]);  
		vResizing: (self orientation = #vertical ifTrue: [#spaceFill] ifFalse: [#shrinkWrap]);
		hResizing: (self orientation = #vertical ifTrue: [#shrinkWrap] ifFalse: [#spaceFill]);
		cellInset: 1;
		addMorphBack: (UiSpacer new orientation: self orientation; extent: 5@5).
		  
	4 timesRepeat: [container addMorphBack: (
		Morph new
			extent: 3@3;
			color: (Color gray: 0.7);
			borderStyle: (BorderStyle raised width: 1);
			ignoresColorMappings: true)].
		
	container addMorphBack: (UiSpacer new orientation: self orientation; extent: 5@5).
	
	self
		removeAllMorphs;
		addMorphBack: container.  