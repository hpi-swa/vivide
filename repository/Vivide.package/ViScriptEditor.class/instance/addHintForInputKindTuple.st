support - input kind
addHintForInputKindTuple

	self inputKind size = 1
		ifTrue: [self addHintForInputKind]
		ifFalse: [self inputKind doWithIndex: [:class :index |
				self addHintForInputKind: class tupleIndex: index]].