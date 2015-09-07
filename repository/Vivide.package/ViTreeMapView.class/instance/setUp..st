as yet unclassified
setUp: aScript
	
	aggregationBlock := aScript valueOfProperty: #aggregate.
	margin := aScript valueOfProperty: #margin.

	((aScript hasProperty: #horizontalScrolling) or: [aScript hasProperty: #verticalScrolling])
		ifTrue: [
			self scroller
				horizontalScrollBarPolicy: (aScript valueOfProperty: #horizontalScrolling ifAbsent: [#alwaysOff]);
				verticalScrollBarPolicy: (aScript valueOfProperty: #verticalScrolling ifAbsent: [#alwaysOff]).
	
			self scroller widgetResizable: (self scroller horizontalScrollBarPolicy = #alwaysOff
				or: [self scroller verticalScrollBarPolicy = #alwaysOff])].