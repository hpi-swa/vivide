support - input kind
addHintForInputKind
	"Convenience."
	
	self assert: self inputKind size = 1.
	
	self
		addHintForInputKind: self inputKind first
		tupleIndex: 0