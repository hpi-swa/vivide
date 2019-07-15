steps
step9d1d6fe1e07c9f4a97aa452c1fbcc9af
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#text -> (ViLabelService doObject: obj key). #icon -> (ViIconService doObject: obj key)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'935c8292-37fa-7e45-842f-22dae69fb74e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {#text -> (ViLabelService doObject: obj key). #icon -> (ViIconService doObject: obj key)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'935c8292-37fa-7e45-842f-22dae69fb74e').
(#iconCode -> 'nil').
(#id -> #'9d1d6fe1-e07c-9f4a-97aa-452c1fbcc9af').
(#isProperty -> true).
(#label -> nil).
(#next -> #'8290f350-f011-2348-a527-7cfb1d2a5a45').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Object').
(#priority -> 2590)
}))
})