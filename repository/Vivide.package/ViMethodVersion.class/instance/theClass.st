accessing
theClass

	(Smalltalk includesKey: self classSymbol)
		ifFalse: [^ nil].

	^ classIsMeta
		ifTrue: [(Smalltalk at: classSymbol) class]
		ifFalse: [Smalltalk at: classSymbol]