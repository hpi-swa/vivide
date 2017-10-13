*vivide
showWindowForTransferMorph: aTransferMorph

	VivideLight active ifNil: [^ self].

	aTransferMorph dragTransferType in: [:type |
	(#(pane panes) includes: type)
		ifTrue: [^ aTransferMorph passenger asList collect: [:ea | 
			ViSinglePaneEditor new
				pane: ea;
				openInWindow;
				fullBounds; "Needed for correct geometry."
				window]].

		
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