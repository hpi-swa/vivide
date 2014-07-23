menu
buildWindowMenu
	| aMenu |
	aMenu := MenuMorph new defaultTarget: self.

	aMenu add: 'About...' action: #aboutRequested.
	aMenu addLine.

	self unexpandedFrame 
		ifNil: [aMenu add: 'Show full screen' translated action: #expandBoxHit]
		ifNotNil: [aMenu add: 'Show original size' translated action: #expandBoxHit].

	aMenu addLine.
	aMenu add: 'Close' action: #delete.

	^aMenu