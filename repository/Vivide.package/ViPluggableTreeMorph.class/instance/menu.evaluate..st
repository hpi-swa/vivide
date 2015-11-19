as yet unclassified
menu: menu evaluate: boolean

	ViPane chooseQueryFor: (self currentSelection
		ifNil: [^ nil]
		ifNotNil: [:node | node at: #object]).
	^ nil