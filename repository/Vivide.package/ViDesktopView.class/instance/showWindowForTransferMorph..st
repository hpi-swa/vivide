as yet unclassified
showWindowForTransferMorph: aTransferMorph

	VivideLight active ifNil: [^ self].

"	(aTransferMorph hasFlag: #script)
		ifTrue: [^ VivideLight active scriptArtifacts: aTransferMorph passenger].  
	
	(aTransferMorph hasFlag: #inspect)
		ifTrue: [^ {ViPane forScript: #objectExplorer withObjects: aTransferMorph passenger asList}]."

	aTransferMorph dragTransferType in: [:type |

		"(#(pane panes) includes: type)
			ifTrue: [^ aTransferMorph passenger asList collect: [:pane | pane openInWindow]]."
	
		(#(objects) includes: type)
			ifTrue: [^ {ViPane forScript: #artifacts withObjects: aTransferMorph passenger asList}].
	
	"	(#(artifact) includes: type)
			ifTrue: [^ {VivideLight active openEditorForArtifact: aTransferMorph passenger}]."
	
	].
	self halt.
	^ {VivideLight active openArtifact: aTransferMorph passenger}