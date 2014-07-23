as yet unclassified
listeningPanesForSelections

	^ target listenersForSelections
		collect: [:msg | msg receiver]
		thenSelect: [:obj | obj notNil]