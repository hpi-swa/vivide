actions
addProtocol

	| editor |
	editor := ViProtocolEditor new
		context: self theClass theNonMetaClass;
		object: nil.
		
	self artifactCreated: editor.