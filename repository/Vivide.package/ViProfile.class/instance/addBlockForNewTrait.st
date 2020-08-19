initialization - bookmarks
addBlockForNewTrait

	self 
		addObject: [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultTraitDefinition]
		asBookmarkLabeled: 'Add Trait'.