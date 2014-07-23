accessing
orientation: aSymbol
	"#leftToRight, #rightToLeft"

	self orientation = aSymbol ifTrue: [^ self].
	orientation := aSymbol.
	
	"Save default orientation for automatic adaption. See #expand."
	self setProperty: #defaultOrientation toValue: orientation.
	
	self collapse.