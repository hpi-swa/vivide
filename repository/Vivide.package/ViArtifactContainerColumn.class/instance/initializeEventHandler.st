as yet unclassified
initializeEventHandler

	super initializeEventHandler.
	self connect: self eventHandler signal: #focusReceivedInSubmorph: toSelector: #onFocusReceivedInSubmorph:.