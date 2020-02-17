meta-scripts
isMeta

	^ (self valueOfProperty: #view) in: [:obj |
		obj isBehavior and: [obj includesBehavior: ViMultiPaneWidget]]