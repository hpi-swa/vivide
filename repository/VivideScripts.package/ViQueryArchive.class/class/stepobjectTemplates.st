steps
stepobjectTemplates
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: {{ViIcons icons8Console64px1Icon. 'Add Code'}
			-> [ViSourceCodeSnippet new]. {UiSilkIcons carIcon. 'Add Class'}
			-> [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultClassDefinition]. {UiSilkIcons carAddIcon. 'Add Trait'}
			-> [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultTraitDefinition]. {ViIcons icons8Note64px1Icon. 'Add Memo'}
			-> [Text new]}]).
(#className -> #ViScriptDefinition).
(#id -> #'56d6e667-ba90-7d43-bdad-aed50019f308').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:45:42.304517 am')
})).
(#sourceCode -> '[:in :out | out addAll: {{ViIcons icons8Console64px1Icon. ''Add Code''}
			-> [ViSourceCodeSnippet new]. {UiSilkIcons carIcon. ''Add Class''}
			-> [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultClassDefinition]. {UiSilkIcons carAddIcon. ''Add Trait''}
			-> [ViSourceCodeSnippet withCode: ViClassDefinitionEditor defaultTraitDefinition]. {ViIcons icons8Note64px1Icon. ''Add Memo''}
			-> [Text new]}]')
})).
(#className -> #ViScriptStep).
(#definition -> #'56d6e667-ba90-7d43-bdad-aed50019f308').
(#iconCode -> 'nil').
(#id -> #objectTemplates).
(#isProperty -> false).
(#label -> 'Object Templates').
(#next -> #'3682e953-476b-8b41-80d4-7c51797e5058').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 9:45:42.304517 am').
(#isGlobal -> true).
(#itemOrientation -> #vertical).
(#searchBar -> false).
(#view -> ViTileView).
(#viewColor -> (Color transparent))
}))
})