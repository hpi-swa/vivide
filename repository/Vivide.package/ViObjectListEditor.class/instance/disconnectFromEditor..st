initialization
disconnectFromEditor: anEditor

	anEditor disconnectSignal: #objectSelectionChanged: from: self.
	anEditor disconnectSignal: #objectsChanged: from: self.
		
	self sgConnectSignal: #lastArtifactRemoved toSelector: #close.