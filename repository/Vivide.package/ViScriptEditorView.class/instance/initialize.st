as yet unclassified
initialize

	super initialize.
	self initializeForContainerClass: ViScriptEditor.
	
	self container textField
		scrollingMode: #none;
		vResizing: #spaceFill;
		autoCreateArtifacts: false.
	
	self setupBlock: [:model :editor |
		model nodes
			ifEmpty: [editor object: nil]
			ifNotEmpty: [:nodes | 
				editor object: (nodes first at: #object).
				editor context: (nodes first at: #context ifAbsent: [#()])]].