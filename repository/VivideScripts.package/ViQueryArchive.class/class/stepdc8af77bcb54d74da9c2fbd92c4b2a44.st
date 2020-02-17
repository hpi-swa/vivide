steps
stepdc8af77bcb54d74da9c2fbd92c4b2a44
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> step id }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'164ae927-229e-9343-b4c2-534b9521d2f8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:44:48 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> step id }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'164ae927-229e-9343-b4c2-534b9521d2f8').
(#iconCode -> 'nil').
(#id -> #'dc8af77b-cb54-d74d-a9c2-fbd92c4b2a44').
(#isProperty -> true).
(#label -> nil).
(#next -> #'2ebbfcc8-18ea-9643-96ea-4d38fe7cf10a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:44:48 pm').
(#headerText -> 'id').
(#priority -> 6690)
}))
})