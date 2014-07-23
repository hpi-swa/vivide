updating
updateProtocol: aText

	self ensureProtocol ifFalse: [^ self].
	protocol renameTo: aText asString.
	
	ViAnimatedImageMorph
		flyOutOn: self
		with: UiFugueIcons tickIcon.