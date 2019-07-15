steps
step3a47c56d3e11344a8b45cc59f6ba7fb5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callHelper to: value]
		ifFalse: [line key hasCategory: #callHelper]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5d0f2daf-f699-3b4a-bc82-2d7b8b18437f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:08:57 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callHelper to: value]
		ifFalse: [line key hasCategory: #callHelper]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5d0f2daf-f699-3b4a-bc82-2d7b8b18437f').
(#iconCode -> 'nil').
(#id -> #'3a47c56d-3e11-344a-8b45-cc59f6ba7fb5').
(#isProperty -> true).
(#label -> nil).
(#next -> #'02e8ebf6-9dc2-a142-8866-0da7a72f9253').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:08:57 am').
(#headerText -> #cH).
(#priority -> 5410)
}))
})