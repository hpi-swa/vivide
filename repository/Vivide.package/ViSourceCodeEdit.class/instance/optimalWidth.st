accessing
optimalWidth
	"Override to ignore comments."
	
	| maxWidth |
	maxWidth := 0.

	((self theText asString copyWithRegex: '"[^"]*"' matchesReplacedWith: '')
		copyReplaceAll: String tab with: '   ')
	   linesDo: [:line | 
			maxWidth := maxWidth max: (self textMorph textStyle defaultFont widthOfString: line)].
		
	^ maxWidth + self scrollBarThickness + 20 