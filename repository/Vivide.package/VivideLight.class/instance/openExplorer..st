nil
openExplorer: anObject

	^ VivideLight useClassicMode
		ifTrue: [#objectExplorer openScriptWith: {anObject}]
		ifFalse: [self openArtifact:
			((ViQueryInterpreter isCollection: anObject)
				ifTrue: [{anObject}] ifFalse: [anObject])]