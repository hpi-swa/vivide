as yet unclassified
lookUnfocused

	self hasDropShadow: false.
	(self hasProperty: #focusedColor) ifFalse: [
		self setProperty: #focusedColor toValue: self outerColor.
		self outerColor: self outerColor darker].
	self removeProperty: #isLookingFocused.