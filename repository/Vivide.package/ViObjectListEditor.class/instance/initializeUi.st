initialization
initializeUi
	"Initialize pages."
		
	super initializeUi.
	
	self ui addPageBtn icon: self ui addPageBtn icon asWireframeSunken.
	self connect: self ui addPageBtn signal: #clicked: toSelector: #addOutputPage.
	
	self ui stack
		animated: true;
		animationDuration: 500.
		
	self connect: self ui pageButtonGroup signal: #currentIndexChanged: toSelector: #changePageTo:.
	
	self sgConnectSignal: #artifactsAdded: toSelector: #updateQueryObjects.
	self sgConnectSignal: #artifactsRemoved: toSelector: #updateQueryObjects.
	self sgConnectSignal: #artifactsAdded: toSelector: #updateHeaderText.
	self sgConnectSignal: #artifactsRemoved: toSelector: #updateHeaderText.
	self sgConnectSignal: #lastArtifactRemoved toSelector: #close.
	
	self sgConnectSignal: #objectSelectionChanged: toSelector: #objectSelectionChanged:.
	self sgConnectSignal: #objectsChanged: toSelector: #objectsChanged:.
	self sgConnectSignal: #artifactsAdded: toSelector: #onObjectsChanged.
	self sgConnectSignal: #artifactsRemoved: toSelector: #onObjectsChanged.
	
	"History."
	self sgConnectSignal: #artifactAdded: to: ViObjectHistory selector: #addArtifact:.
	self sgConnectSignal: #artifactRemoved: toSelector: #rememberArtifact:.
	self connect: self signal: #closed toSelector: #rememberAllArtifacts.
	
	"Keyboard focus"
	"self sgConnectSignal: #artifactAdded: toSelector: #grabKeyboard."
	
	ActiveHand addKeyboardListener: self.