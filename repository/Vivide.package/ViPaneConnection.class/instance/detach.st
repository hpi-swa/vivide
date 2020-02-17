initialization
detach

	self source ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [pane detach: self]].
	self target ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [pane detach: self]].