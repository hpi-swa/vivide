menu messages
implementorsOfIt

	| aSelector |
	self lineSelectAndEmptyCheck: [^ self].
	(aSelector := self selectedSelector) == nil ifTrue: [^ morph flash].
	morph requestImplementors: aSelector.  