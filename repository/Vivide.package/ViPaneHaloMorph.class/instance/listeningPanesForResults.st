as yet unclassified
listeningPanesForResults

	^ target listenersForResults
		collect: [:msg | msg receiver]
		thenSelect: [:obj | obj notNil]