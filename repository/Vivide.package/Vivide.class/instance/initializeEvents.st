initialization
initializeEvents

	ActiveHand addKeyboardListener: self.
	
	self sgConnectSignal: #artifactRequested: toSelector: #openArtifact:.
	self sgConnectSignal: #editorRequested: toSelector: #openEditor:.