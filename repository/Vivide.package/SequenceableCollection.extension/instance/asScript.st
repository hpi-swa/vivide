*vivide-scripts
asScript

	ViLoggingService trigger: {#message -> 'Script(s) created from sequence.'}.

	^ ViScriptPart convertList: self