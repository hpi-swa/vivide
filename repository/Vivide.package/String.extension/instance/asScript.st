*vivide-queries
asScript

	ViLoggingService trigger: {#message -> 'Script created from string/block.'}.

	^ ViScriptTemplate convertFromString: self