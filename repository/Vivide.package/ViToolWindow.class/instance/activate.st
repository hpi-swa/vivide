actions
activate

	super activate.

	self isSticky
		ifTrue: [closeBox hideFull. expandBox hideFull]
		ifFalse: [
			expandBox showFull.
			closeBox showFull].
	
	lockBox ifNotNil: [:b | b showFull].
	labelMorph show.
	
	self headerButtons do: [:morph | morph showFull].
	
	self editor ifNotNil: [:e | e grabKeyboard].