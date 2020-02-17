initialization
initialize
	
	super initialize.
	self initializeUi.
	
	"scene-graph signals coming from editors."
	self sgConnectSignal: #artifactRequested: toSelector: #openArtifact:.
	self sgConnectSignal: #explorerRequested: toSelector: #openExplorer:.
	self sgConnectSignal: #artifactCreated: toSelector: #addArtifact:ifNotFocusedAfter: pattern: #(1 0).

	"scene-graph signals coming from drop target."
	self sgConnectSignal: #artifactsAdded: toSelector: #updateModelInput.
	self sgConnectSignal: #artifactsRemoved: toSelector: #updateModelInput.

	"History."
	self sgConnectSignal: #artifactAdded: toSelector: #rememberArtifact:.
	self sgConnectSignal: #artifactRemoved: toSelector: #rememberArtifact:.
	self connect: self signal: #closed toSelector: #rememberAllArtifacts.
	
	self addKeyboardCaptureFilter: self. "keyboard shortcuts"
	
	self initializeUiSystemChanges.
	self initializeUiObjectChanges.