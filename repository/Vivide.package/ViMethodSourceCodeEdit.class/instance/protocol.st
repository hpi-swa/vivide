accessing
protocol

	^ self selector ifNotNil: [:symbol |
		self theClass organization categoryOfElement: symbol]