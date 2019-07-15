steps
step5bac288b036f3b409351de76b1f7cd03
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> ((ViMethodVersion versionsOfMethod: obj methodReference) size)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'2b0346c1-9ba9-fc4d-8a85-bc8c3dbc3189').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> ((ViMethodVersion versionsOfMethod: obj methodReference) size)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2b0346c1-9ba9-fc4d-8a85-bc8c3dbc3189').
(#iconCode -> 'nil').
(#id -> #'5bac288b-036f-3b40-9351-de76b1f7cd03').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'NumVersions').
(#labelColor -> '#AAAAAA').
(#priority -> 3130)
}))
})