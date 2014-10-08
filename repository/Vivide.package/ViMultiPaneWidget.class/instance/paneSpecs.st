as yet unclassified
paneSpecs

	| specs |
	specs := OrderedCollection new.
	self model nodes first keysAndValuesDo: [:key :value |
		| tokens |
		tokens := (key findTokens: $_).
		tokens size = 2 "e.g., 1_text" ifTrue: [
			| index property |
			index := tokens first asInteger.
			property := tokens second asSymbol.
			[specs size < index] whileTrue: [specs add: Dictionary new].
			(specs at: index) at: property put: value]].
	^ specs