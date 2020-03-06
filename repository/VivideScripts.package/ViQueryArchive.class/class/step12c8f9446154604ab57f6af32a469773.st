steps
step12c8f9446154604ab57f6af32a469773
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:exNote | 
	{ #text -> (exNote content asString withoutLineEndings).
	#icon -> (ViIconService doObject: exNote) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'62024fcb-89ee-694c-b6d7-51a3335fd288').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:35:31.337371 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:exNote | 
	{ #text -> (exNote content asString withoutLineEndings).
	#icon -> (ViIconService doObject: exNote) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'62024fcb-89ee-694c-b6d7-51a3335fd288').
(#iconCode -> 'nil').
(#id -> #'12c8f944-6154-604a-b57f-6af32a469773').
(#isProperty -> true).
(#label -> nil).
(#next -> #'f842c34b-9696-044b-8de6-93126409c92b').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:35:31.337371 pm').
(#resizeMode -> #spaceFill)
}))
})