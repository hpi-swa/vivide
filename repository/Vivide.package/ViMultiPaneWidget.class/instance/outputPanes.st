listening
outputPanes

	^ self panes select: [:pane | pane listenersForSelections anySatisfy: [:msg | msg receiver = self]]