feedback
warn: stringOrText for: aMorph

	self isInWorld ifFalse: [^ self].
	
	UiMessage warning: stringOrText for: aMorph.