steps
step0369a0d46ce39f49b251c92b852ef534
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #signature to: value]
		ifFalse: [line key hasCategory: #signature]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'8d5534f1-7f5e-3644-b4f9-66bb5474de30').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:54:14 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #signature to: value]
		ifFalse: [line key hasCategory: #signature]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8d5534f1-7f5e-3644-b4f9-66bb5474de30').
(#iconCode -> 'nil').
(#id -> #'0369a0d4-6ce3-9f49-b251-c92b852ef534').
(#isProperty -> true).
(#label -> nil).
(#next -> #'d7717fb2-4d04-9a42-a74d-4a8e8f3a891c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 9:54:14 am').
(#headerText -> #S).
(#priority -> 5270)
}))
})