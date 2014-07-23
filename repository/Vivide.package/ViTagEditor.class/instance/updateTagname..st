updating
updateTagname: aText

	self ensureTag ifFalse: [^ self].
	tag renameTo: aText asString.
	
	ViAnimatedImageMorph
		flyOutOn: self
		with: UiFugueIcons tickIcon.