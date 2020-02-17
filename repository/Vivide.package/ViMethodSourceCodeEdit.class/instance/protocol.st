accessing
protocol

	^ protocol ifNil: [self selector ifNotNil: [:symbol |
		self theClass organization categoryOfElement: symbol]]