steps
step117962c3a327154ab5319a15adc69887
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackModel to: value]
		ifFalse: [line key hasCategory: #setupCallbackModel]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'567c07ac-c21d-1740-9fb2-955b2c713b0a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:11:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackModel to: value]
		ifFalse: [line key hasCategory: #setupCallbackModel]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'567c07ac-c21d-1740-9fb2-955b2c713b0a').
(#iconCode -> 'nil').
(#id -> #'117962c3-a327-154a-b531-9a15adc69887').
(#isProperty -> true).
(#label -> nil).
(#next -> #'1bb9843f-ebf1-3848-82dc-01ee3ed5468d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:11:39 pm').
(#headerText -> #scM).
(#priority -> 5380)
}))
})