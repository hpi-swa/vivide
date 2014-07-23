actions
addArtifact

	| editor |
	editor := ViMemoEditor new
		object: nil.
		
	self artifactCreated: editor.