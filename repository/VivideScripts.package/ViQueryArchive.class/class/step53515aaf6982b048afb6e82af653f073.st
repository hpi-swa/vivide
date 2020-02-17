steps
step53515aaf6982b048afb6e82af653f073
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj value).
	#icon -> ((ViIconService doObject: obj value) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'3acead78-7edd-4142-b254-601110223ce5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (ViLabelService doObject: obj value).
	#icon -> ((ViIconService doObject: obj value) ifNil: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3acead78-7edd-4142-b254-601110223ce5').
(#iconCode -> 'nil').
(#id -> #'53515aaf-6982-b048-afb6-e82af653f073').
(#isProperty -> true).
(#label -> nil).
(#next -> #'f4f3c4ff-456b-3a46-a1ae-22320975be38').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Object').
(#labelColor -> '#000000').
(#priority -> 2450).
(#resizeMode -> #rigid)
}))
})