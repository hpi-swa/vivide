listening
stopListeningForSelectionsFrom: pane

	(pane listenersForSelections detect: [:msg | msg receiver == self] ifNone: [])
		ifNotNil: [:msg |
			pane listenersForSelections remove: msg.
			self outgoingObjects: self outgoingObjects allButLast].  