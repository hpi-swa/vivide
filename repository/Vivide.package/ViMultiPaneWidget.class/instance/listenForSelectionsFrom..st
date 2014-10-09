listening
listenForSelectionsFrom: pane

	(WeakMessageSend receiver: self selector: #outgoingObjects:from:) in: [:msg |
		pane listenersForSelections add: msg.
		self outgoingObjects: self outgoingObjects, {nil}].