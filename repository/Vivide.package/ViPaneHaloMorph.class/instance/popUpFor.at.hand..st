events
popUpFor: aPane at: eventPosition hand: hand

	self flag: #metaScript.
	aPane fullScript. "Update meta scripts"

	super popUpFor: aPane at: eventPosition hand: hand.

	ViLoggingService trigger: {#message -> 'Halo opened.'}.