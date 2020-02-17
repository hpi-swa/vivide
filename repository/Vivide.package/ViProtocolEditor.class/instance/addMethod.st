actions
addMethod

	| editor |
	editor := ViMethodEditor new
		context: self object;
		object: nil.
		
	self artifactCreated: editor.  