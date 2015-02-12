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
	aWorld sgConnectSignal: #editorRequested: to: self selector: #openEditor:.
	
	"aWorld startStepping: self at: Time millisecondClockValue selector: #checkForUpdate arguments: nil stepTime: 1000" "1000 * 60 * 60" "hour". 