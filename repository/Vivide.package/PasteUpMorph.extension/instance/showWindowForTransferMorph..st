*vivide
showWindowForTransferMorph: aTransferMorph

	VivideLight active ifNil: [^ self].

	(aTransferMorph hasFlag: #script)
		ifTrue: [^ VivideLight active scriptArtifacts: aTransferMorph passenger].  
	
	(aTransferMorph hasFlag: #inspect)
		ifTrue: [^ {VivideLight active openExplorer: aTransferMorph passenger}].

	aTransferMorph dragTransferType in: [:type |

		(#(pane panes) includes: type)
			ifTrue: [^ aTransferMorph passenger asList collect: [:pane | pane openInWindow]].
	
		(#(objects) includes: type)
			ifTrue: [^ {VivideLight active openArtifacts: aTransferMorph passenger}].
	
		(#(artifact) includes: type)
			ifTrue: [^ {VivideLight active openEditorForArtifact: aTransferMorph passenger}].
	
	].

	^ aTransferMorph passenger isList
		ifTrue: [{VivideLight active openArtifacts: aTransferMorph passenger}]
		ifFalse:[{VivideLight active openArtifact: aTransferMorph passenger}]