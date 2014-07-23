listening
stopListeningForResultsFrom: pane

	(pane listenersForResults detect: [:msg | msg receiver == self] ifNone: [])
		ifNotNil: [:msg |
			pane listenersForResults remove: msg.
			self providersForResults remove: pane.
			self decreaseTupleInput].