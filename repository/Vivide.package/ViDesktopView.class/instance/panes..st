accessing
panes: newPanes

	((panes ifNil: [#()]) copyWithoutAll: newPanes)
		do: [:pane | pane delete].

	panes := OrderedCollection new.
	newPanes do: [:pane |
		(pane owner == self)
			ifFalse: [self openInWindow: pane]
			ifTrue: [panes add: pane]].