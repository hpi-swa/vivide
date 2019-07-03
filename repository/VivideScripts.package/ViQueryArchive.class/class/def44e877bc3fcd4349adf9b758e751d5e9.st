definitions
def44e877bc3fcd4349adf9b758e751d5e9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:ctxts | ctxts gather: [:ctxt | ctxt stack]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'44e877bc-3fcd-4349-adf9-b758e751d5e9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:ctxts | ctxts gather: [:ctxt | ctxt stack]] value: in)]')
})