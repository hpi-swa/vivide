as yet unclassified
resolve: aString

	aString = 'thisScript'
		ifTrue: [^ aString asSymbol].
	^ super resolve: aString