as yet unclassified
isMeta

	^ (self valueOfProperty: #view) in: [:obj |
		obj isBehavior and: [
			obj == ViMultiPaneWidget
				or: [obj inheritsFrom: ViMultiPaneWidget]]]