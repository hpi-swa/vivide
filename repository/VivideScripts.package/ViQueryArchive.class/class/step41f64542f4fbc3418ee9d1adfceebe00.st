steps
step41f64542f4fbc3418ee9d1adfceebe00
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> ((SystemNavigation default allCallsOn: step id) count: [:ref | (ref actualClass includesBehavior: ViScriptArchive) not])  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'c99bb4e9-b28c-9049-acf4-56b162369cbe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:47:45 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> ((SystemNavigation default allCallsOn: step id) count: [:ref | (ref actualClass includesBehavior: ViScriptArchive) not])  }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c99bb4e9-b28c-9049-acf4-56b162369cbe').
(#iconCode -> 'nil').
(#id -> #'41f64542-f4fb-c341-8ee9-d1adfceebe00').
(#isProperty -> true).
(#label -> nil).
(#next -> #'cf7fdd66-0271-9544-b4a9-3ecca1e4a611').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 2:47:45 pm').
(#headerText -> '# senders').
(#priority -> 6710)
}))
})