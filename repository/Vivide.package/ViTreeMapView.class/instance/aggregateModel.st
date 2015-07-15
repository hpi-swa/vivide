as yet unclassified
aggregateModel

	self model ifNotNil: [:m |
		m aggregate: #weight with: self aggregationBlock defaultValue: 0].