*vivide
showWindowForTransferMorph: aTransferMorph

	ActiveVivide ifNil: [^ self].

	aTransferMorph dragTransferType in: [:type |
	(#(pane) includes: type)
		ifTrue: [^ ViMultiPaneEditor new
			addPane: aTransferMorph passenger;
			openInWindow].
		
	(#(objects queries) includes: type)
		ifTrue: [^ ActiveVivide openArtifacts: aTransferMorph passenger].
	
	(#(artifact) includes: type)
		ifTrue: [^ ActiveVivide openEditorForArtifact: aTransferMorph passenger].
	
	(#(editorStates) includes: type)
		ifTrue: [^ ActiveVivide openEditor: aTransferMorph passenger first].
		
	(#(operation) includes: type)
		ifTrue: [^ ActiveVivide openEditorForArtifact: (
			(ViArtifactLookupService classForOperation: aTransferMorph passenger) new
				context: nil; object: nil)]].
		
	^ ActiveVivide openArtifact: aTransferMorph passenger