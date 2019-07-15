steps
stepfb20347b7a6fbe43bd7888492dc2d4b1
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:mcp | {
	#text -> (ViLabelServiceForEclipse new doMCPackage: mcp).
	#icon -> (ViIconServiceForEclipse new doMCPackage: mcp)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'809654df-ab07-304b-81aa-eee22edfb970').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:13:59 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:mcp | {
	#text -> (ViLabelServiceForEclipse new doMCPackage: mcp).
	#icon -> (ViIconServiceForEclipse new doMCPackage: mcp)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'809654df-ab07-304b-81aa-eee22edfb970').
(#iconCode -> 'nil').
(#id -> #'fb20347b-7a6f-be43-bd78-88492dc2d4b1').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0fdcdea8-5071-914b-ab0c-5d6335ce985f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 4:35:12 pm').
(#inputKind -> MCPackage).
(#priority -> 3720).
(#view -> ViTreeViewExtended)
}))
})