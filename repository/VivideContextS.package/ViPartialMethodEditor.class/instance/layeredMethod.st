as yet unclassified
layeredMethod

	^ (self method ifNotNil: [:method |
		method methodClass compiledMethodAt: method selector ifAbsent: []])
			ifNotNil: [:layeredMethod | layeredMethod isContextSMethod
				ifTrue: [layeredMethod]
				ifFalse: [nil]]