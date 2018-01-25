updating - specific
aggregateModel

	self model
		aggregate: #weight
		with: self aggregationBlock
		defaultValue: defaultWeight
		minimumValue: minWeight.