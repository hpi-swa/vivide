*VivideDynamicAnalysis
eventWrapper

	| method |
	method := Morph >> #handleFocusEvent:.
	
	[method isMwMethodWrapper and: [(method isKindOf: ViMorphicEventWrapper) not]]
		whileTrue: [method := method clientMethod].
	
	^ method