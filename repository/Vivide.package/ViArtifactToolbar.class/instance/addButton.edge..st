adding
addButton: aButton edge: aSymbol

"	aSymbol = #left ifTrue: [leftBar addMorphBack: aButton]."
	aSymbol = #top ifTrue: [topBar addMorphBack: aButton].
"	aSymbol = #right ifTrue: [rightBar addMorphBack: aButton].
	aSymbol = #bottom ifTrue: [bottomBar addMorphBack: aButton]."