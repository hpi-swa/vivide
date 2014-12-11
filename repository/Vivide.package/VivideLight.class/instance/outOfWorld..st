as yet unclassified
outOfWorld: aWorld

	aWorld sgDisconnectSignal: #artifactRequested: from: self selector: #openArtifact:.
	aWorld sgDisconnectSignal: #explorerRequested: from: self selector: #openExplorer:.
	aWorld sgDisconnectSignal: #implementorsRequested: from: self selector: #openImplementors:.
	aWorld sgDisconnectSignal: #sendersRequested: from: self selector: #openSenders:.

	aWorld sgDisconnectSignal: #referencesRequested: from: self selector: #openStepReferences:.
	aWorld sgDisconnectSignal: #editorRequested: from: self selector: #openEditor:.

	super outOfWorld: aWorld.  