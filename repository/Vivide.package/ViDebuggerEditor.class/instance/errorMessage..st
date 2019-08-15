accessing - ui
errorMessage: aMessage

	| msg heading |
	heading := (UiPlatform current string: aMessage includesSubstring: ':')
		ifFalse: ['']
		ifTrue: [(aMessage findTokens: $:) first]. 
	msg := aMessage
		ifNil: ['']
		ifNotNil: [:m | heading ifEmpty: [m] ifNotEmpty: [m allButFirst: heading size + 1]].
	
	self ui infoLbl text: ('<b>', heading, '</b>', msg escapeHtmlText) asTextFromHtml