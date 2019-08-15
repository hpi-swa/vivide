decorations
decorationNamed: name ifAbsentPut: block

	^ (self decorationNamed: name) ifNil: [
		self addDecoration: block value named: name]