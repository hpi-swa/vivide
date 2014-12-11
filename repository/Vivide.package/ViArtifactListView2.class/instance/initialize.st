initialization
initialize
	
	super initialize.
	self initializeUi.
	
	"scene-graph signals coming from editors."
	self sgConnectSignal: #artifactRequested: toSelector: #openArtifact:.
	self sgConnectSignal: #explorerRequested: toSelector: #openExplorer:.
	self sgConnectSignal: #artifactCreated: toSelector: #forceAddArtifact:ifNotFocusedAfter: pattern: #(1 0).
	"scene-graph signals coming from drop target."
	self sgConnectSignal: #artifactsAdded: toSelector: #updateModelInput.
	self sgConnectSignal: #artifactsRemoved: toSelector: #updateModelInput.

	self sgConnectSignal: #artifactsAdded: toSelector: #onObjectsChanged.
	self sgConnectSignal: #artifactsRemoved: toSelector: #onObjectsChanged.
	
	"History."
	self sgConnectSignal: #artifactAdded: to: ViObjectHistory selector: #addArtifact:.
	self sgConnectSignal: #artifactRemoved: toSelector: #rememberArtifact:.
	self connect: self signal: #closed toSelector: #rememberAllArtifacts.
	
	
	ActiveHand addKeyboardListener: self.
	
	self initializeUiSystemChanges.
	self initializeUiObjectChanges.