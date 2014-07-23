initialization
initialize

	super initialize.
	
	self sgConnectSignal: #artifactRequested: to: ActiveVivide selector: #openArtifact:.
	self sgConnectSignal: #explorerRequested: to: ActiveVivide selector: #openArtifact:.
	self sgConnectSignal: #queryRequested: to: ActiveVivide selector: #openArtifact:.
	self sgConnectSignal: #implementorsRequested: to: ActiveVivide selector: #openImplementors:.
	self sgConnectSignal: #sendersRequested: to: ActiveVivide selector: #openSenders:.

	self sgConnectSignal: #referencesRequested: to: ActiveVivide selector: #openStepReferences:.