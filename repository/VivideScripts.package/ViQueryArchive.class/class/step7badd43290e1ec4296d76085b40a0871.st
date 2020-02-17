steps
step7badd43290e1ec4296d76085b40a0871
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (  ViLabelService doObject: def outputKind ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'43174667-aa73-c547-aa61-afaab03962e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:58:21 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (  ViLabelService doObject: def outputKind ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'43174667-aa73-c547-aa61-afaab03962e2').
(#iconCode -> 'nil').
(#id -> #'7badd432-90e1-ec42-96d7-6085b40a0871').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e81669ed-ebe0-c84e-95e7-7ac5889d8779').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:58:21 pm').
(#priority -> 970)
}))
})