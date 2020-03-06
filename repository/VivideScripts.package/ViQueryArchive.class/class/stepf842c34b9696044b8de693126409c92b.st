steps
stepf842c34b9696044b8de693126409c92b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:exNote | exNote comments]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b5eb691f-8c72-1249-a1ea-c947997a473b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:33:05.226371 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:exNote | exNote comments]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b5eb691f-8c72-1249-a1ea-c947997a473b').
(#iconCode -> 'nil').
(#id -> #'f842c34b-9696-044b-8de6-93126409c92b').
(#isProperty -> false).
(#label -> nil).
(#next -> #'b39849ac-4d4f-bb46-89d3-e18b72f52aea').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 1:33:05.226371 pm')
}))
})