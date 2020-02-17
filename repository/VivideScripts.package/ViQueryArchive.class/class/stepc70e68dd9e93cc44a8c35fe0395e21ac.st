steps
stepc70e68dd9e93cc44a8c35fe0395e21ac
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackUi to: value]
		ifFalse: [line key hasCategory: #setupCallbackUi]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5e210b4e-c77b-6847-8b84-3bce5313ac4d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:53:24 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #setupCallbackUi to: value]
		ifFalse: [line key hasCategory: #setupCallbackUi]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5e210b4e-c77b-6847-8b84-3bce5313ac4d').
(#iconCode -> 'nil').
(#id -> #'c70e68dd-9e93-cc44-a8c3-5fe0395e21ac').
(#isProperty -> true).
(#label -> nil).
(#next -> #'ed57b1e0-4b74-094a-926b-2776acef9b31').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:53:24 am').
(#headerText -> #scU).
(#priority -> 5360)
}))
})