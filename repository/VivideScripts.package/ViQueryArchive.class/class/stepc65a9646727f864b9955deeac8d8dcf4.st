steps
stepc65a9646727f864b9955deeac8d8dcf4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cat | {
	#text -> (ViLabelServiceForEclipse new doSystemCategory: cat).
	#icon -> (ViIconServiceForEclipse new doSystemCategory: cat)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f02318cb-a35b-e240-a0b0-501b9bf175d9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:21:01 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:cat | {
	#text -> (ViLabelServiceForEclipse new doSystemCategory: cat).
	#icon -> (ViIconServiceForEclipse new doSystemCategory: cat)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f02318cb-a35b-e240-a0b0-501b9bf175d9').
(#iconCode -> 'nil').
(#id -> #'c65a9646-727f-864b-9955-deeac8d8dcf4').
(#isProperty -> true).
(#label -> nil).
(#next -> #'00d6ab88-02b8-d343-98bf-44d2fb8c6ab5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:21:01 pm').
(#inputKind -> String).
(#priority -> 3680).
(#view -> ViTreeViewExtended)
}))
})