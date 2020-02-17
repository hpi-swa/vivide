steps
stepe63568e85926f6409527117c4e70e841
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (  ViLabelService doObject: def inputKind ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'033c8dcb-925a-b04e-bac3-9802272f6cd1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:57:12 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | { #text -> (  ViLabelService doObject: def inputKind ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'033c8dcb-925a-b04e-bac3-9802272f6cd1').
(#iconCode -> 'nil').
(#id -> #'e63568e8-5926-f640-9527-117c4e70e841').
(#isProperty -> true).
(#label -> nil).
(#next -> #'7badd432-90e1-ec42-96d7-6085b40a0871').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 1:57:12 pm').
(#priority -> 960)
}))
})