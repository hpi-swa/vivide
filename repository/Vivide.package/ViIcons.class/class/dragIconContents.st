contents
dragIconContents

	| container |
	container := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;  
		cellInset: 1.
		  
	4 timesRepeat: [container addMorphBack: (
		Morph new
			extent: 3@3;
			color: (Color gray: 0.7);
			borderStyle: (BorderStyle raised width: 1))].
	
	container fullBounds.
	container bounds: container submorphBounds.
	
	^ container imageForm