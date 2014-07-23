listening
listenForResultsFrom: pane

	(WeakMessageSend receiver: self selector: #objects:from:) in: [:msg |
		pane listenersForResults add: msg.
		self providersForResults add: pane.
		self increaseTupleInput].