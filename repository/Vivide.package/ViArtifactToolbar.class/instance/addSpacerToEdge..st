adding
addSpacerToEdge: aSymbol

	| spacer |
	spacer := Morph new
		color: Color transparent;
		extent: 10@10.
		
"	aSymbol = #left ifTrue: [leftBar addMorphBack: spacer]."
	aSymbol = #top ifTrue: [topBar addMorphBack: spacer].
"	aSymbol = #right ifTrue: [rightBar addMorphBack: spacer].
	aSymbol = #bottom ifTrue: [bottomBar addMorphBack: spacer]."