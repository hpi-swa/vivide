as yet unclassified
createInvisibleColumnForMax

	| column bar space label |
	column := Morph new
		changeTableLayout;
		color: Color transparent;
		listDirection: #topToBottom;
		hResizing: #rigid;
		vResizing: #spaceFill;
		width: 3;
		yourself.
	space := Morph new
		changeTableLayout;
		color: Color transparent;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself.
	bar := Morph new
		color: (Color gray: 0.85);
		hResizing: #spaceFill;
		vResizing: #rigid; "will be configured"
		borderWidth: 1;
		yourself.
	
	showLabel == true ifTrue: [
		label := Morph new
			extent: 1@ self labelHeight;
			color: Color transparent].
	
	column addAllMorphs: {space. bar}.
	label ifNotNil: [column addMorphBack: label].

	^ column