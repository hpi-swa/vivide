initialization
updateFor: aScript in: anEnvironment
	"Read a script's meta-data and update my properties and maybe communication protocal with the environment."
	
	aggregationBlock := aScript valueOfProperty: #aggregate.
	margin := aScript valueOfProperty: #margin.

	((aScript hasProperty: #horizontalScrolling) or: [aScript hasProperty: #verticalScrolling])
		ifTrue: [
			self scroller
				horizontalScrollBarPolicy: (aScript valueOfProperty: #horizontalScrolling ifAbsent: [#alwaysOff]);
				verticalScrollBarPolicy: (aScript valueOfProperty: #verticalScrolling ifAbsent: [#alwaysOff]).
	
			self scroller widgetResizable: (self scroller horizontalScrollBarPolicy = #alwaysOff
				or: [self scroller verticalScrollBarPolicy = #alwaysOff])].