initialization
initializeUi
	"Initialize pages."
		
	super initializeUi.
	
	self
		removeAllMorphs;
		borderWidth: 0;
		layoutPolicy: ViConstraintLayout new;  
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	
"	self ui panel wantsHaloFromClick: false.
	self ui content wantsHaloFromClick: false.
	
	self ui content
		layoutPolicy: ViConstraintLayout new;
		layoutInset: 0."
	"self ui content layoutPolicy cellInset: 2."
	
	self ui addPaneBtn icon: self ui addPaneBtn icon asWireframeSunken.
	self connect: self ui addPaneBtn signal: #clicked: toSelector: #copyEditor.
	self ui addPaneBtn
		balloonText: 'Copy or save tool';
		passenger: [{ViEditorState new in: [:s | self saveState: s]; yourself}];
		dragTransferType: #editorStates;
		source: nil.
	
	self sgConnectSignal: #artifactsAdded: toSelector: #updateHeaderText.
	self sgConnectSignal: #artifactsRemoved: toSelector: #updateHeaderText.
	self sgConnectSignal: #lastArtifactRemoved toSelector: #closeIfEmpty.
	self sgConnectSignal: #currentQueryChanged: toSelector: #updateHeaderText.
	self sgConnectSignal: #objectsChanged: toSelector: #updateHeaderText.