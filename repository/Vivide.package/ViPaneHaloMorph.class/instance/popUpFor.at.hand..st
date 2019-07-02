pop up
popUpFor: aPane at: eventPosition hand: eventHand

	self flag: #metaScript.
	aPane fullScript. "Update meta scripts"

	hand := eventHand.
	super popUpFor: aPane at: eventPosition hand: eventHand.

	ViLoggingService trigger: {#message -> 'Halo opened.'}.