as yet unclassified
valueOfProperty: symbol ifAbsent: block
	"Try to resolve property in definition if existing. If fails, use own properties dictionary."

	^ super
		valueOfProperty: symbol
		ifAbsent: [self definition
			ifNil: [block value]
			ifNotNil: [:def | def valueOfProperty: symbol ifAbsent: block]].