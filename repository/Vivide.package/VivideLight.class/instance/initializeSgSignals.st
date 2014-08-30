as yet unclassified
initializeSgSignals

	ActiveWorld sgConnectSignal: #artifactRequested: to: self selector: #openArtifact:.
	ActiveWorld sgConnectSignal: #explorerRequested: to: self selector: #openArtifact:.
	ActiveWorld sgConnectSignal: #queryRequested: to: self selector: #openArtifact:.
	ActiveWorld sgConnectSignal: #implementorsRequested: to: self selector: #openImplementors:.
	ActiveWorld sgConnectSignal: #sendersRequested: to: self selector: #openSenders:.

	ActiveWorld sgConnectSignal: #referencesRequested: to: self selector: #openStepReferences:.
	ActiveWorld sgConnectSignal: #editorRequested: to: self selector: #openEditor:.