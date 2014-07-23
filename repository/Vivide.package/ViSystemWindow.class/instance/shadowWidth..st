drop shadows
shadowWidth: anInteger

	anInteger == 10
		ifTrue:[self removeProperty: #shadowWidth]
		ifFalse:[self setProperty: #shadowWidth toValue: anInteger].