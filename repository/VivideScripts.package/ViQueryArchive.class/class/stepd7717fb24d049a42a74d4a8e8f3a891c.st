steps
stepd7717fb24d049a42a74d4a8e8f3a891c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'db7f0d5a-6752-f64d-84de-65b1da6f1009').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 11:06:30 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'db7f0d5a-6752-f64d-84de-65b1da6f1009').
(#iconCode -> 'nil').
(#id -> #'d7717fb2-4d04-9a42-a74d-4a8e8f3a891c').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e45648f8-4fef-f343-8972-cbb555789355').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 11:06:30 am').
(#headerText -> #D).
(#priority -> 5280)
}))
})