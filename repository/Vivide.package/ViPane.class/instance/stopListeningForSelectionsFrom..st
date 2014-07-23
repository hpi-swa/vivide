listening
stopListeningForSelectionsFrom: pane

	(pane listenersForSelections detect: [:msg | msg receiver == self] ifNone: [])
		ifNotNil: [:msg |
			pane listenersForSelections remove: msg.
			self providersForSelections remove: pane.
			self decreaseTupleInput].