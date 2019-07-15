steps
step2ebbfcc818ea964396ea4d38fe7cf10a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> step references size }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b9d73412-797a-934e-bdcd-48bd6f81fc3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:46:54 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> step references size }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b9d73412-797a-934e-bdcd-48bd6f81fc3d').
(#iconCode -> 'nil').
(#id -> #'2ebbfcc8-18ea-9643-96ea-4d38fe7cf10a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'41f64542-f4fb-c341-8ee9-d1adfceebe00').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:46:54 pm').
(#headerText -> '# references').
(#priority -> 6700)
}))
})