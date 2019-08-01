as yet unclassified
attachSilently
	"Do not notify."

	self isValid ifFalse: [^ false "Not allowed."].

	self source in: [:pane |		
		((pane connections includes: self) and: [self mustBeUnique])
			ifTrue: [^ false]
			ifFalse: [pane attach: self]].
	self target in: [:pane |
		((pane connections includes: self) and: [self mustBeUnique])
			ifTrue: [^ false]
			ifFalse: [pane attach: self]].
	^ true