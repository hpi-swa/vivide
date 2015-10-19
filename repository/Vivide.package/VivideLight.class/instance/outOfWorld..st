initialization
outOfWorld: aWorld

	aWorld sgDisconnectSignal: #artifactRequested: from: self selector: #openArtifact:.
	aWorld sgDisconnectSignal: #explorerRequested: from: self selector: #openExplorer:.
	aWorld sgDisconnectSignal: #implementorsRequested: from: self selector: #openImplementors:.
	aWorld sgDisconnectSignal: #sendersRequested: from: self selector: #openSenders:.
	aWorld sgDisconnectSignal: #editorRequested: from: self selector: #openEditor:.

	aWorld stopStepping: self.

	super outOfWorld: aWorld.  