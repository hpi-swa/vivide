steps
step8ed524739493214294be054478bc571b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (ViTextStyler new styledTextFor: def sourceCode asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'49e2992c-3cde-a648-8e86-83a5cebe767e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:56:12 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (ViTextStyler new styledTextFor: def sourceCode asText) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'49e2992c-3cde-a648-8e86-83a5cebe767e').
(#iconCode -> 'nil').
(#id -> #'8ed52473-9493-2142-94be-054478bc571b').
(#isProperty -> true).
(#label -> 'Properties for Map Definitions').
(#next -> #'e63568e8-5926-f640-9527-117c4e70e841').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:56:12 pm').
(#inputKind -> ViScriptDefinition).
(#priority -> 660).
(#view -> ViTreeViewExtended)
}))
})