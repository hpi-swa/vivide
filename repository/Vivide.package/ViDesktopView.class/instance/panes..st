as yet unclassified
panes: newPanes

	((panes ifNil: [#()]) copyWithoutAll: newPanes)
		do: [:pane | pane delete].

	(panes := newPanes asOrderedCollection) do: [:pane |
		pane owner ifNil: [self openInWindow: pane]].