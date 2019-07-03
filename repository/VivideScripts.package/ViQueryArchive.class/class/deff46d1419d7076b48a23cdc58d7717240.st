definitions
deff46d1419d7076b48a23cdc58d7717240
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:panes | panes sortBy: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'f46d1419-d707-6b48-a23c-dc58d7717240').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:44:24 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:panes | panes sortBy: [:p1 :p2 | p1 topLeft <= p2 topLeft]] value: in)]')
})