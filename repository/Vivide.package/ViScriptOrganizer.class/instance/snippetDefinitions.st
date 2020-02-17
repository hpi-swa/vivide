accessing
snippetDefinitions

	^ self definitions values select: [:definition | definition isSnippetDefinition]