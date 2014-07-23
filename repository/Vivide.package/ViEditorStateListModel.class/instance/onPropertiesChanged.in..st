callbacks
onPropertiesChanged: someProperties in: aNode

	someProperties do: [:property |
		property asSymbol == #text ifTrue: [
			"Update header of editor."
			(aNode at: #state) properties at: #headerText put: (aNode at: #text)]].