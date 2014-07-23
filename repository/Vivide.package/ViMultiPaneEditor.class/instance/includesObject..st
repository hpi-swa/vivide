testing
includesObject: anObject

	self panes do: [:pane |
		(pane objects includes: anObject)
			ifTrue: [^ true]].
	^ false