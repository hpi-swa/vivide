as yet unclassified
linesOfCodeForClass: classDescription

	| lines |
	lines := classDescription methodDict
		inject: 0
		into: [:sum :each | sum + (self linesOfCodeForMethod: each)].
	^ classDescription isMeta
		ifTrue: [lines]
		ifFalse: [lines + (self linesOfCodeForClass: classDescription class)]