as yet unclassified
initialize

	super initialize.
	self initializeForContainerClass: ViScriptEditor.
	
	self container edit
		scrollingMode: #none;
		vResizing: #spaceFill;
		autoCreateArtifacts: false.
	
	self setupBlock: [:model :container |
		model nodes
			ifEmpty: [	container object: nil]
			ifNotEmpty: [:nodes | 
				container object: (nodes first at: #object).
				container context: (nodes first at: #context ifAbsent: [#()])]].