steps
step89c40fb8551c9e469651f11978e9ff30
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj method).
	#icon -> ((ViIconService doObject: obj method) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'8f991b65-2c47-da49-8011-9f7b1b85db0f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj method).
	#icon -> ((ViIconService doObject: obj method) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8f991b65-2c47-da49-8011-9f7b1b85db0f').
(#iconCode -> 'nil').
(#id -> #'89c40fb8-551c-9e46-9651-f11978e9ff30').
(#isProperty -> true).
(#label -> nil).
(#next -> #'4c0b175c-ebc3-fb4e-9b1c-31b8b5b5660d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Object').
(#priority -> 2340)
}))
})