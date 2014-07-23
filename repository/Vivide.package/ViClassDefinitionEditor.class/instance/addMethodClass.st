actions
addMethodClass

	| editor |
	editor := ViMethodEditor new
		context: self theClass theMetaClass;
		object: nil.
		
	self artifactCreated: editor.  