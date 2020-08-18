decorations
decorationNamed: name ifAbsentPut: block

	^ self
		decorationNamed: name
		ifAbsent: [self addDecoration: block value named: name]