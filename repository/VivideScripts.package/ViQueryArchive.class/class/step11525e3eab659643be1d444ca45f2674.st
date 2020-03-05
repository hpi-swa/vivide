steps
step11525e3eab659643be1d444ca45f2674
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:panes | panes sorted: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'f46d1419-d707-6b48-a23c-dc58d7717240').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:44:24 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:panes | panes sorted: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f46d1419-d707-6b48-a23c-dc58d7717240').
(#iconCode -> 'nil').
(#id -> #'11525e3e-ab65-9643-be1d-444ca45f2674').
(#isProperty -> false).
(#label -> nil).
(#next -> #'8c87a9e9-a74c-3749-b4ba-b8960612b464').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:44:24 pm')
}))
})