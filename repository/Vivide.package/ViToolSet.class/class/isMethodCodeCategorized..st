as yet unclassified
isMethodCodeCategorized: method

	| lines |
	lines := (Smalltalk at: #LinesOfCode)
		at: method methodReference
		ifAbsent: [#()].
	^ (lines size > 0
		and: [lines size = (self linesOfCodeForMethod: method)])
		and: [lines allSatisfy: [:line | line isCategorized]]