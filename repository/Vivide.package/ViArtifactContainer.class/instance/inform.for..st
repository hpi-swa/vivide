feedback
inform: stringOrText for: aMorph

	self isInWorld ifFalse: [^ self].
	
	UiMessage information: stringOrText for: aMorph.