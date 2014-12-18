*vivide
showWindowForTransferMorph: aTransferMorph

	VivideLight active ifNil: [^ self].

	aTransferMorph dragTransferType in: [:type |
	(#(pane) includes: type)
		ifTrue: [^ {ViSinglePaneEditor new
			pane: aTransferMorph passenger;
			openInWindow;
			fullBounds; "Needed for correct geometry."
			window}].
		
	(aTransferMorph hasFlag: #script)
		ifTrue: [^ VivideLight active scriptArtifacts: aTransferMorph passenger].  
		
	(#(objects) includes: type)
		ifTrue: [^ {VivideLight active openArtifacts: aTransferMorph passenger}].
	
	(#(artifact) includes: type)
		ifTrue: [^ {VivideLight active openEditorForArtifact: aTransferMorph passenger}].
	
	(#(editorStates) includes: type)
		ifTrue: [^ {VivideLight active openEditor: aTransferMorph passenger first}].
	].

	^ {VivideLight active openArtifact: aTransferMorph passenger}