initialization
initialize
	
	super initialize.
	
	self sgConnectSignal: #artifactRequested: toSelector: #openArtifact:.
	self sgConnectSignal: #explorerRequested: toSelector: #openArtifact:.
	
	self sgConnectSignal: #artifactCreated: toSelector: #addArtifact:ifNotFocusedAfter: pattern: #(1 0).
	
	ActiveHand addKeyboardListener: self.