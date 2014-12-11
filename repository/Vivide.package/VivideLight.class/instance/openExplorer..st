as yet unclassified
openExplorer: anObject

	^ VivideLight useClassicMode
		ifTrue: [#objectExplorer openScriptWith: {anObject}]
		ifFalse: [self openArtifact: anObject]