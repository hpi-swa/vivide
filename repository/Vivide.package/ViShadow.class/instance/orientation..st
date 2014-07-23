accessing
orientation: aSymbol
	"#horizontal, #vertical"
	
	orientation = aSymbol ifTrue: [^ self].
	
	orientation := aSymbol.
	
	orientation == #vertical
		ifTrue: [self vResizing: #spaceFill; hResizing: #rigid; width: 140]
		ifFalse: [self hResizing: #spaceFill; vResizing: #rigid; height: 80].