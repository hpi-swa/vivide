callbacks
onPropertiesChanged: someProperties in: aNode

	someProperties do: [:property |
		property asSymbol == #text ifTrue: [(aNode at: #state) label: (aNode at: #text)].
		"property asSymbol == #checked ifTrue: [(aNode at: #state) at: #shortcut put: (aNode at: #checked)]."
		].