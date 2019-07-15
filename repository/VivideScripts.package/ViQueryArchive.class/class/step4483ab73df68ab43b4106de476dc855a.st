steps
step4483ab73df68ab43b4106de476dc855a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> obj name.
	#icon -> (obj isDirectory
		ifTrue: [UiSilkIcons folderIcon]
		ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'7bb79b42-3c9b-794f-b1cd-4367dbf38509').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> obj name.
	#icon -> (obj isDirectory
		ifTrue: [UiSilkIcons folderIcon]
		ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7bb79b42-3c9b-794f-b1cd-4367dbf38509').
(#iconCode -> 'nil').
(#id -> #'4483ab73-df68-ab43-b410-6de476dc855a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'85478cdc-dec7-5648-b9af-bbf1c6a6d389').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 2210).
(#view -> ViTreeViewExtended)
}))
})