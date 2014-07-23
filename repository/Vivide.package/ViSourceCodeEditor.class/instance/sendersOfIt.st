menu messages
sendersOfIt

	| aSelector |
	self lineSelectAndEmptyCheck: [^ self].
	(aSelector := self selectedSelector) == nil ifTrue: [^ morph flash].
	morph requestSenders: aSelector.  