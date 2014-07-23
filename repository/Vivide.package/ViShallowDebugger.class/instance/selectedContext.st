as yet unclassified
selectedContext

	contextStackIndex = nil
		ifTrue: [^exception stack first]
		ifFalse: [^exception stack at: contextStackIndex]