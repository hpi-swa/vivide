as yet unclassified
resolve: aString

	(#('thisScript' 'thisPane' 'thisView') includes: aString)
		ifTrue: [^ aString asSymbol].
	^ super resolve: aString