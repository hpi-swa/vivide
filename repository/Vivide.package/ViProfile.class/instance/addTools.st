as yet unclassified
addTools

	self addScript: {
	
		[ViScriptTemplate lookupGlobalScripts] -> {
			#id -> #tools.
			#label -> 'Vivide Tools'.
			#isGlobal -> true.
			#priority -> 9999.
			#view -> ViListView.
			#viewColor -> Color veryVeryLightGray.
			#after -> #formattedScripts.}.
	
	} asScript