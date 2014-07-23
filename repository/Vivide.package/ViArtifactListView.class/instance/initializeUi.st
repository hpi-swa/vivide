as yet unclassified
initializeUi

	super initializeUi.
	"Stub some calls to avoid handling in object list editor."

	self sgConnectSignal: #artifactsAdded: toSelector: #yourself.
	self sgConnectSignal: #artifactsRemoved: toSelector: #yourself.
	self sgConnectSignal: #lastArtifactRemoved toSelector: #yourself.
	
"	self sgConnectSignal: #objectSelectionChanged: toSelector: #yourself.
	self sgConnectSignal: #objectsChanged: toSelector: #objectsChanged:.
"	self sgConnectSignal: #artifactAdded: toSelector: #yourself.
	self sgConnectSignal: #artifactRemoved: toSelector: #yourself.