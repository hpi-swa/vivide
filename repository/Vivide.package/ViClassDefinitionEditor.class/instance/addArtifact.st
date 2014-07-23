actions
addArtifact

	| editor |
	editor := ViMethodEditor new
		context: self theClass;
		object: nil.
		
	self artifactCreated: editor.