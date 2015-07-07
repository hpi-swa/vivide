initialization - bookmarks
addBlockForNewClass

	self 
		addObject: [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultClassDefinition]
		asBookmarkLabeled: 'Add Class'.