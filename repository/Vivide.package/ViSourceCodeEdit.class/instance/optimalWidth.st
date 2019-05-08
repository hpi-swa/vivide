accessing
optimalWidth
	"Override to ignore full-line comments."
	
	| maxWidth |
	maxWidth := 0.

	(self theText asString copyReplaceAll: String tab with: '      ')
	   linesDo: [:line | 
		| firstChar firstCharIndex |
		firstCharIndex := line indexOfAnyOf: CharacterSet nonSeparators startingAt: 1.
		
		(firstCharIndex > 0 and: [(line at: firstCharIndex) ~= $"])
			ifTrue: [maxWidth := maxWidth max: (self textMorph textStyle defaultFont widthOfString: line)]].
		
	^ maxWidth + (self scrollBarThickness * 3)