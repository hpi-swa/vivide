operations
doClassComment: aClassComment
	
	| comment |
	comment := aClassComment comment copy asText.
	comment prepend: ('<font size="9" color="#AAAAAA">', aClassComment theClass name, '</font><br>') asHtmlText.
	^ panel := self textboxFor: comment