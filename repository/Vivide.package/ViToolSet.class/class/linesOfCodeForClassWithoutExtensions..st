as yet unclassified
linesOfCodeForClassWithoutExtensions: classDescription

	| lines | 
	lines := classDescription methodDict
		inject: 0
		into: [:sum :each | 
			((each methodClass organization categoryOfElement: each selector) beginsWith: #*)
				ifTrue: [sum]
				ifFalse: [sum + (self linesOfCodeForMethod: each)]].
	^ classDescription isMeta
		ifTrue: [lines]
		ifFalse: [lines + (self linesOfCodeForClassWithoutExtensions: classDescription class)]