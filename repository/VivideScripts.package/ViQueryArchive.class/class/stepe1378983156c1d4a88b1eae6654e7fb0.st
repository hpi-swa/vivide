steps
stepe1378983156c1d4a88b1eae6654e7fb0
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:ctxts | ctxts gather: [:ctxt | ctxt stack]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'44e877bc-3fcd-4349-adf9-b758e751d5e9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:ctxts | ctxts gather: [:ctxt | ctxt stack]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'44e877bc-3fcd-4349-adf9-b758e751d5e9').
(#iconCode -> 'UiFugueIcons layersStackArrangeIcon').
(#id -> #'e1378983-156c-1d4a-88b1-eae6654e7fb0').
(#isProperty -> false).
(#label -> 'Call stack').
(#next -> #'1bb6538b-c256-b34b-958e-5996dea59092').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Context).
(#outputKind -> Context).
(#priority -> 450).
(#view -> ViTreeViewExtended)
}))
})