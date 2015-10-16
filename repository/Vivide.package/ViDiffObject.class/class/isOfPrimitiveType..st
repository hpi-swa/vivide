as yet unclassified
isOfPrimitiveType: object

	^ ((object isNumber
		or: [object isString])
		or: [object isKindOf: Boolean])
		or: [object isPoint]