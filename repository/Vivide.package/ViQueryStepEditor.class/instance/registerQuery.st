actions
registerQuery

	self step register.
	
	self step isReferenceStep
		ifFalse: [self step definition register].
	
	ViAnimatedImageMorph
		flyOutOn: self
		with: UiSilkIcons reportAddIcon.