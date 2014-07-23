listening
listenForSelectionsFrom: pane

	(WeakMessageSend receiver: self selector: #objects:from:) in: [:msg |
		pane listenersForSelections add: msg.
		self providersForSelections add: pane.
		self increaseTupleInput].