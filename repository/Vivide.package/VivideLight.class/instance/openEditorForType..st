actions - open
openEditorForType: anObject
	"Lookup editor for object and create new object within. See ViDropTarget>>#acceptOperation:context:event:."

	| artifactEditor |
	artifactEditor := (ViArtifactLookupService doObject: anObject) new
		context: nil;
		object: nil.
	
	^ self openEditorForArtifact: artifactEditor