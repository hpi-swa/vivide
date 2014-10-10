as yet unclassified
convert: object

	^ (object isSymbol not and: [object isString or: [object isClosure]])
		ifTrue: [object asScript]
		ifFalse: [super convert: object]