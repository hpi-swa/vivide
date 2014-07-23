actions
addArtifact

	| editor newDefinition |
	newDefinition := self definition class new
		organization: self definition organization;
		sourceCode: self definition class defaultSourceCode.
		
	editor := self class new
		object: newDefinition.
	self artifactCreated: editor.