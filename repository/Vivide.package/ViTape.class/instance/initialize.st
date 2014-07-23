initialization
initialize

	super initialize.
	
	self
		initializeSystemChangeNotifications;
		color: Color transparent;
		layoutPolicy: ViTapeLayout new;
		dropEnabled: true. "for drag-scrolling"
	
	"new queries"
	self sgConnectSignal: #sendersRequested: toSelector: #openSenders:.
	self sgConnectSignal: #implementorsRequested: toSelector: #openImplementors:.
	self sgConnectSignal: #queryRequested: toSelector: #openQuery:.
	
	"new artifact list"
	self sgConnectSignal: #artifactRequested: toSelector: #openArtifact:.
	self sgConnectSignal: #explorerRequested: toSelector: #openArtifact:.
	
	ActiveHand addKeyboardListener: self.
	self sgConnectSignal: #aboutToClose toSelector: #passKeyboardFocusFrom: pattern: #(0).