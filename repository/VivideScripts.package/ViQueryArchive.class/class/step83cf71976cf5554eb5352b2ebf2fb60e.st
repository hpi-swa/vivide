steps
step83cf71976cf5554eb5352b2ebf2fb60e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | { #text -> (  method symbolic ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'02fdc016-c7d4-774c-b567-7c9d4ed539b9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 10:42:49 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | { #text -> (  method symbolic ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'02fdc016-c7d4-774c-b567-7c9d4ed539b9').
(#iconCode -> 'nil').
(#id -> #'83cf7197-6cf5-554e-b535-2b2ebf2fb60e').
(#isProperty -> true).
(#label -> 'Byte codes').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 10:42:49 am').
(#priority -> 5820).
(#view -> ViTreeViewExtended)
}))
})