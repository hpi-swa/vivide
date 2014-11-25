as yet unclassified
detach

	self source ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [pane connections remove: self]].
	self target ifNotNil: [:pane |
		(pane connections includes: self)
			ifTrue: [
				pane connections remove: self.
				pane decreaseTupleInput]].