accessing
debugger: aDebugger

	(aDebugger isKindOf: ViShallowDebugger)
		ifTrue: [self disableControls]
		ifFalse: [self enableControls].

	debugger ifNotNil: [:dbg | dbg removeDependent: self].

	debugger := aDebugger.

	debugger ifNotNil: [:dbg |
		dbg fullyExpandStack.
		dbg addDependent: self.
		self
			update: #relabel;
			update: #contextStackList].