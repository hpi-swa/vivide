as yet unclassified
listenToPanesForResults

	^ target providersForResults
		select: [:obj | obj notNil]