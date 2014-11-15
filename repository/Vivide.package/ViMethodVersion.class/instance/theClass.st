accessing
theClass

	(Smalltalk includesKey: self classSymbol)
		ifFalse: [^ nil].

	^ classIsMeta
		ifTrue: [(Smalltalk at: classSymbol) theMetaClass]
		ifFalse: [Smalltalk at: classSymbol]