as yet unclassified
updateToolbars

	super updateToolbars.
	otherSteps ifNil: [^ self].
	
	(self valueOfProperty: #cycleBtn) ifNotNil: [:btn |
		btn passenger: self object.
		"otherSteps first cycleStep in: [:step |
			step = self object
				ifTrue: [btn icon: (UiDiagonaIcons icon0327Small clippedTo: 16@16) asWireframeSunken]
				ifFalse: [btn icon: (UiDiagonaIcons icon0307Small clippedTo: 16@16) asWireframeSunken]]"].