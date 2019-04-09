properties
valueOfProperty: property ifAbsent: block

	^ (#(icon id label isProperty isReference) includes: property)
		ifTrue: [self perform: property asSymbol]
		ifFalse: [super valueOfProperty: property ifAbsent: block] 