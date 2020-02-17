steps
steped57b1e04b74094a926b2776acef9b31
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackHelper to: value]
		ifFalse: [line key hasCategory: #setupCallbackHelper]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b80b03b6-e21d-bb48-a012-435e7ab6205a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:10:45 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackHelper to: value]
		ifFalse: [line key hasCategory: #setupCallbackHelper]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b80b03b6-e21d-bb48-a012-435e7ab6205a').
(#iconCode -> 'nil').
(#id -> #'ed57b1e0-4b74-094a-926b-2776acef9b31').
(#isProperty -> true).
(#label -> nil).
(#next -> #'117962c3-a327-154a-b531-9a15adc69887').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:10:45 pm').
(#headerText -> #scH).
(#priority -> 5370)
}))
})