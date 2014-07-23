as yet unclassified
object: method

	method ifNil: [^ self setDefaultSource].

	method isContextSMethod
		ifTrue: [self partialMethod: method]
		ifFalse: [(method methodClass compiledMethodAt: method selector ifAbsent: []) in: [:layeredMethod |
			"Is CompiledMethod in a CSLayeredMethod object?"
			layeredMethod isContextSMethod
				ifTrue: [self partialMethod: (layeredMethod partialMethods detect: [:pm | pm method == method] ifNone: [])]
				ifFalse: [self setDefaultSource]]].