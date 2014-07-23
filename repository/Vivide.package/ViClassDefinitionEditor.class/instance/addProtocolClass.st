actions
addProtocolClass

	| editor |
	editor := ViProtocolEditor new
		context: self theClass theMetaClass;
		object: nil.
		
	self artifactCreated: editor.