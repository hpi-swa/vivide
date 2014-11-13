*vivide
showWindowForTransferMorph: aTransferMorph

	VivideLight active ifNil: [^ self].

	aTransferMorph dragTransferType in: [:type |
	(#(pane) includes: type)
		ifTrue: [^ ViMultiPaneEditor new
			addPane: aTransferMorph passenger;
			openInWindow].
		
	(#(objects) includes: type)
		ifTrue: [^ VivideLight active openArtifacts: aTransferMorph passenger].
	
	(#(artifact) includes: type)
		ifTrue: [^ VivideLight active openEditorForArtifact: aTransferMorph passenger].
	
	(#(editorStates) includes: type)
		ifTrue: [^ VivideLight active openEditor: aTransferMorph passenger first].
	].

	^ VivideLight active openArtifact: aTransferMorph passenger