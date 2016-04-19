as yet unclassified
itemFor: aNode

	| text |
	text := self textFor: aNode.
	text ifNotNil: [
		text isString ifTrue: [text := text asText].
		text isString | text isText ifFalse: [text := text asString asText].
		self overrideCodeFont ifFalse: [text addAttribute: (TextFontReference toFont: UiPlatform current standardCodeFont)].
		labelColor ifNotNil: [:color |
			text addAttribute: (TextColor color: color)]].

	text ifNil: [text := '' asText].
	
	^ text