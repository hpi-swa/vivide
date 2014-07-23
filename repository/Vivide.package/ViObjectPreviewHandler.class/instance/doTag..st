operations
doTag: aTag
	
	| comment |
	aTag description ifNil: [^ self].
	aTag description ifEmpty: [^ self].
	
	comment := aTag description copy asText.
	comment prepend: ('<font size="9" color="#AAAAAA">', aTag tagname, '</font><br>') asHtmlText.
	panel := self textboxFor: comment.