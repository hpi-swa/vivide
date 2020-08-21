steps
steptools
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [ViScriptTemplate lookupGlobalScripts] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'0dcea12b-89bb-ee48-b9c5-42158f6d707e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 8:16:33.026517 am')
})).
(#sourceCode -> '[:in :out | [ViScriptTemplate lookupGlobalScripts] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0dcea12b-89bb-ee48-b9c5-42158f6d707e').
(#iconCode -> 'nil').
(#id -> #tools).
(#isProperty -> false).
(#label -> 'Vivide Tools').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#formattedScripts)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 August 2020 8:16:33.026517 am').
(#isGlobal -> true).
(#priority -> 9999).
(#view -> ViListView).
(#viewColor -> (Color r: 0.875 g: 0.875 b: 0.875))
}))
})