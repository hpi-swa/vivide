as yet unclassified
createColumnForScale

	| parts frac column bar space label |
	frac := (max asString findTokens: '.') in: [:tokens |
		tokens size = 1 ifTrue: [0] ifFalse: [tokens second size]].
	
	parts := (1 to: numLines) collect: [:ea | String streamContents: [:s | max / ea printOn: s showingDecimalPlaces: frac]].
	parts := parts, ( String streamContents: [:s | 0 printOn: s showingDecimalPlaces: frac]).
	
	column := Morph new
		changeTableLayout;
		color: Color transparent;
		listDirection: #topToBottom;
		cellPositioning: #rightCenter;
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		layoutInset: 5;
		yourself.

	parts
		do: [:ea | column addMorphBack: ea asStringOrText asMorph]
		separatedBy: [
			"Filler"
			column addMorphBack: (Morph new
				changeTableLayout;
				color: Color transparent;
				vResizing: #spaceFill;
				hResizing: #rigid;
				width: 1;
				yourself)].
			
	column addMorphBack: (Morph new
		color: Color transparent;
		width: 5;
		height: labelHeight).
	
	
	^ column