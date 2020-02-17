steps
step6432870100b2654ea36998b5ecac31fd
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  obj value identityHash ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'3da6e66c-d09c-444f-8118-1f207970176b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 4:10:44 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | { #text -> (  obj value identityHash ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3da6e66c-d09c-444f-8118-1f207970176b').
(#iconCode -> 'nil').
(#id -> #'64328701-00b2-654e-a369-98b5ecac31fd').
(#isProperty -> true).
(#label -> nil).
(#next -> #'5e941cab-2cc7-0646-9ed0-d8493d5d3d0e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 4:53:55 pm').
(#labelColor -> #AAAAAA).
(#priority -> 4460)
}))
})