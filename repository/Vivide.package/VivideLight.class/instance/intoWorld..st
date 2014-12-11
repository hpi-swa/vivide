as yet unclassified
intoWorld: aWorld

	super intoWorld: aWorld.

	aWorld ifNil: [
		Error signal: 'Cannot create scene graph signals.'.
		^ self].

	aWorld sgConnectSignal: #artifactRequested: to: self selector: #openArtifact:.
	aWorld sgConnectSignal: #explorerRequested: to: self selector: #openExplorer:.
	aWorld sgConnectSignal: #implementorsRequested: to: self selector: #openImplementors:.
	aWorld sgConnectSignal: #sendersRequested: to: self selector: #openSenders:.

	aWorld sgConnectSignal: #referencesRequested: to: self selector: #openStepReferences:.
	aWorld sgConnectSignal: #editorRequested: to: self selector: #openEditor:.