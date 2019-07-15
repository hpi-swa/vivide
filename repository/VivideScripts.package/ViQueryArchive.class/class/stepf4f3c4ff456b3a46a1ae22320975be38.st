steps
stepf4f3c4ff456b3a46a1ae22320975be38
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj value class).
	#icon -> ((ViIconService doObject: obj value class) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0d3c8977-7255-764b-88d4-70a5dacbf0f6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 1:08:17 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj value class).
	#icon -> ((ViIconService doObject: obj value class) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0d3c8977-7255-764b-88d4-70a5dacbf0f6').
(#iconCode -> 'nil').
(#id -> #'f4f3c4ff-456b-3a46-a1ae-22320975be38').
(#isProperty -> true).
(#label -> nil).
(#next -> #'0d821eec-f78f-d44e-80df-96d6b534a947').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 1:08:17 pm').
(#headerText -> 'Type').
(#priority -> 3930)
}))
})