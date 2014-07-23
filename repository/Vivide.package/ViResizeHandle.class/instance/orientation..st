accessing
orientation: aSymbol
	"#horizontal, #vertical"

	orientation = aSymbol ifTrue: [^ self].

	orientation := aSymbol.
	
	self
		extent: self height @ self width; "flip"
		updateLayout.