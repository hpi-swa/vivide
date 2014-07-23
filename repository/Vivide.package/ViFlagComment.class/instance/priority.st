accessing - convenience
priority

	^ (#(todo bug fixme ugly) includes: self symbol)
		ifTrue: [#high]
		ifFalse: [#low]