actions
addMethod

	| editor |
	editor := ViMethodEditor new
		context: self theClass theNonMetaClass;
		object: nil.
		
	self artifactCreated: editor.  