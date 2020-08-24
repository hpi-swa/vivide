as yet unclassified
lookFocused

	self hasDropShadow: true.
	(self valueOfProperty: #focusedColor)
		ifNotNil: [:c | 
			self removeProperty: #focusedColor.
			self outerColor: c].