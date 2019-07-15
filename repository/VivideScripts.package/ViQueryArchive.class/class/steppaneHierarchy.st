steps
steppaneHierarchy
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:pane | {
	#icon -> (ViIconService doObject: pane).
	#text -> (ViLabelService doObject: pane).
	#selectedLater -> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'506ca8c1-1c8f-d34d-b7a1-273cb36303e8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:40:11 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:pane | {
	#icon -> (ViIconService doObject: pane).
	#text -> (ViLabelService doObject: pane).
	#selectedLater -> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'506ca8c1-1c8f-d34d-b7a1-273cb36303e8').
(#iconCode -> 'nil').
(#id -> #paneHierarchy).
(#isProperty -> true).
(#label -> 'Pane Hierarchy').
(#next -> #'f58af729-af2a-594d-87eb-c499c1bc536b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:40:11 pm').
(#inputKind -> ViPane)
}))
})