properties
valueOfProperty: property ifAbsent: block

	^ (#(icon id label isProperty) includes: property)
		ifTrue: [self perform: property asSymbol]
		ifFalse: [
			"Try to resolve property in definition if existing. If fails, use own properties dictionary."			
			super
				valueOfProperty: property
				ifAbsent: [self definition
					ifNil: [block value]
					ifNotNil: [:def | def valueOfProperty: property ifAbsent: block]]] 