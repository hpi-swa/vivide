as yet unclassified
addObjectTemplates

	self addScript: {
	
		[:in :out | out addAll: {
			{ViIcons icons8Console64px1Icon. 'Add Code'}
				-> [ViSourceCodeSnippet new].
			{UiSilkIcons carIcon. 'Add Class'}
				-> [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultClassDefinition].
			{UiSilkIcons carAddIcon. 'Add Trait'}
				-> [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultTraitDefinition].
			{ViIcons icons8Note64px1Icon. 'Add Memo'}
				-> [Text new].
		}] -> {
			#id -> #objectTemplates.
			#label -> 'Object Templates'.
			#isGlobal -> true.
			#view -> ViTileView.
			#itemOrientation -> #vertical.
			#searchBar -> false.
			#viewColor -> Color veryVeryLightGray}.
		
		[:spec | { #icon -> spec key first scaleIconToDisplay. #text -> spec key second. #object -> spec value. #doubleClicked -> [[ spec value value open ]] }].
	
	} asScript