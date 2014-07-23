as yet unclassified
listenToPanesForSelections

	^ target providersForSelections
		select: [:obj | obj notNil]