actions - open
openArtifact: anObject after: anotherEditor

	| editor |	
	
	editor := (self nextMethodContainerAfter: anotherEditor)
		ifNil: [self
			addEditorFromState: ((ViEditorStateLookupService defaultStateFor: ViObjectListEditor)
			objects: {anObject})
			after: anotherEditor]
		ifNotNil: [:e | e openArtifact: anObject. e].
		
	"ViOverlayConnector
		newFrom: anotherEditor morphsOfInterest
		to: editor morphsOfInterest
		in: self."
	
	^ editor