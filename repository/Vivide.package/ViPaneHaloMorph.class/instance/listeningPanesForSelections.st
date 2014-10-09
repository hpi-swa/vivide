accessing
listeningPanesForSelections

	^ target listenersForSelections
		collect: [:msg | msg receiver]
		thenSelect: [:obj | obj notNil and: [(target hasOwner: obj) not]]