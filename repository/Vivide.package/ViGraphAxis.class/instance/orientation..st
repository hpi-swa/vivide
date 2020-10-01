accessing
orientation: aSymbol

	orientation := aSymbol.
	
	aSymbol == #vertical
		ifTrue: [self vResizing: #spaceFill; hResizing: #shrinkWrap]
		ifFalse: [self vResizing: #shrinkWrap; hResizing: #spaceFill].