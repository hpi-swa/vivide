memento - data
hasUnacceptedChanges

	^ super hasUnacceptedChanges
		or: [self panes anySatisfy: [:pane |
			pane hasUnacceptedChanges]]