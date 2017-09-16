hints - input kind
updateInputKind
	"Try to found out about input objects."

	"(self object valueOfProperty: #inputKind ifAbsent: [])
		ifNotNil: [:k |"
			"Only use the configured inputKind of even tuples are fully set and not nil."
			"(k isArray and: [k anySatisfy: [:kind | kind isNil]])
				ifTrue: [self inputKind: k]
				ifFalse: [self inputKind: (k isArray ifTrue: [k] ifFalse: [{k}]). ^ self]]."

	([(self interpretUpToDetect: [:script | script next == self object]) allObjects]
	on: Error do: [self inputKind: {nil}. ^ self]) ifEmpty: [self input: #("empty"); inputKind: {"global"}] ifNotEmpty: [:objects |
		self input: objects.
		
		(ViQueryStepDefinition
			collectBaseClassesForContext: objects
			withTuples: (objects allSatisfy: #isList)) in: [:tmp |
				self inputKind: (tmp first isBehavior
					ifTrue: [{tmp first}]
					ifFalse: [tmp collect: [:someClasses | someClasses first]])]].