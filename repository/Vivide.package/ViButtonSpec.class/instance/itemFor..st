as yet unclassified
itemFor: aNode

	| icon text balloonText item itemColor enabled |	
	icon := self iconFor: aNode.
	text := self textFor: aNode.
	balloonText := self balloonTextFor: aNode.
	itemColor := self colorFor: aNode.
	enabled := self enabledFor: aNode.
		
	item := UiToolButton new
		autoRaise: false;
		color: (itemColor ifNil: [Color gray: 0.85]);
		icon: icon; 
		balloonText: balloonText; 
		enabled: enabled.
		
	text ifNotNil: [
		text isString ifTrue: [text := text asText].
		text isString | text isText ifFalse: [text := text asString asText].
		self overrideButtonFont ifFalse: [text addAttribute: (TextFontReference toFont: UiPlatform current standardButtonFont)].
		item text: text].
	
	self
		connect: item signal: #clicked:
		toSelector: #doClick: pattern: {#=.aNode}.
		
	^ item