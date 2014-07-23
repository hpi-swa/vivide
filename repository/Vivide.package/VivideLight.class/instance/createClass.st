actions - creation
createClass

	self openArtifact: (
		ViSourceCodeSnippet new
			code: ViClassDefinitionEditor defaultClassDefinition;
			yourself).