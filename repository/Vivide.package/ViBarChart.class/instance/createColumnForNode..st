initialization
createColumnForNode: node

	| column bar space label |
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
		vResizing: #rigid; "will be configured"
		yourself.
	
	showLabel == true ifTrue: [
		label := TransformMorph new
			addMorph: (node at: #text ifAbsent: []) asText asMorph;
			angle: Float pi /2;
			color: Color transparent;
			yourself.
		label firstSubmorph left: label firstSubmorph left - label firstSubmorph width.
		label extent: TextStyle defaultFont height @ self labelHeight].
	
	column addAllMorphs: {space. bar}.
	label ifNotNil: [column addMorphBack: label].
	
	bar setProperty: #value toValue: (node at: #value ifAbsent: [0]).
	bar color: (node at: #color ifAbsent: [Color gray: 0.4]).
	bar balloonText: (node at: #text ifAbsent: []).
	
	^ column