as yet unclassified
paneColor
	| cc |
	(cc := self valueOfProperty: #paneColor) ifNotNil: [^cc].
	cc := Color veryVeryLightGray.
	self paneColor: cc.
	^cc