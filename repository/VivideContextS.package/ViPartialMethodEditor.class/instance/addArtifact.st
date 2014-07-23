as yet unclassified
addArtifact

	| editor |
	editor := ViPartialMethodEditor new
		context: self theClass;
		object: nil.
		
	self artifactCreated: editor.