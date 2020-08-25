pop up
popUpFor: aPane at: eventPosition hand: eventHand

	hand := eventHand.
	super popUpFor: aPane at: eventPosition hand: eventHand.

	ViLoggingService trigger: {#message -> 'Halo opened.'}.