meta-scripts
isMeta

	self flag: #metaScript.
	^ (self valueOfProperty: #view) in: [:obj |
		obj isBehavior and: [obj includesBehavior: ViMultiPaneWidget]]