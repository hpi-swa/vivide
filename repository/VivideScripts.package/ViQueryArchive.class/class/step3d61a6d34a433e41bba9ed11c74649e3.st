steps
step3d61a6d34a433e41bba9ed11c74649e3
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | { #text -> cs preamble }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'84d84d37-43ed-e343-9fc5-9e5fdf99178d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 5:33:44 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cs | { #text -> cs preamble }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'84d84d37-43ed-e343-9fc5-9e5fdf99178d').
(#iconCode -> 'nil').
(#id -> #'3d61a6d3-4a43-3e41-bba9-ed11c74649e3').
(#isProperty -> true).
(#label -> 'Change Set Preamble').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> ChangeSet).
(#priority -> 6220).
(#view -> ViTreeViewExtended)
}))
})