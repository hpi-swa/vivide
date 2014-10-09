accessing
providingPanesForResults

	^ target providersForResults
		select: [:obj | obj notNil]