steps
step78e13ff4d0931140b575be2225a6eaf7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUi to: value]
		ifFalse: [line key hasCategory: #callUi]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'e5934e3d-2e4b-1248-a3b8-c63c2ff2c3c2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:53:40 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUi to: value]
		ifFalse: [line key hasCategory: #callUi]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e5934e3d-2e4b-1248-a3b8-c63c2ff2c3c2').
(#iconCode -> 'nil').
(#id -> #'78e13ff4-d093-1140-b575-be2225a6eaf7').
(#isProperty -> true).
(#label -> nil).
(#next -> #'3a47c56d-3e11-344a-8b45-cc59f6ba7fb5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:53:40 am').
(#headerText -> #cU).
(#priority -> 5400)
}))
})