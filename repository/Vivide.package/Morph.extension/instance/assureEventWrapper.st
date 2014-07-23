*vivide-tracing
assureEventWrapper

	self eventWrapper isMwMethodWrapper
		ifFalse: [(ViMorphicEventWrapper on: #handleFocusEvent: inClass: Morph) install].
			
	^ self eventWrapper