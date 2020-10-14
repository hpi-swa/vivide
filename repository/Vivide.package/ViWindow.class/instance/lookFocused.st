as yet unclassified
lookFocused

	(self valueOfProperty: #isLookingFocused ifAbsent: [false])
		ifTrue: [^ self].

	self hasDropShadow: true.
	(self valueOfProperty: #focusedColor)
		ifNotNil: [:c | 
			self removeProperty: #focusedColor.
			self outerColor: c].
	self setProperty: #isLookingFocused toValue: true.