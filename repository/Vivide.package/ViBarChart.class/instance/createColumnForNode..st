initialization
createColumnForNode: node

	| column bar space |
	column := Morph new
		changeTableLayout;
		color: Color transparent;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	space := Morph new
		changeTableLayout;
		color: Color transparent;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself.
	bar := Morph new
		hResizing: #spaceFill;
		yourself.
	column addMorphBack: space; addMorphBack: bar.
	
	bar setProperty: #value toValue: (node at: #value ifAbsent: [0]).
	bar color: (node at: #color ifAbsent: [Color gray: 0.4]).
	
	^ column