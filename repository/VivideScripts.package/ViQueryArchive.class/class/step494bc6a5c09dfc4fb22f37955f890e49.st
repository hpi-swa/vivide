steps
step494bc6a5c09dfc4fb22f37955f890e49
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:ref | {
	#text -> (ViLabelService doObject: ref).
	#icon -> (ViIconService doObject: ref).
	#color -> (ref isSymbol ifTrue: [Color gray: 0.85] ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'182574d6-eb74-d84e-9c6f-1fbf64f6dc24').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:ref | {
	#text -> (ViLabelService doObject: ref).
	#icon -> (ViIconService doObject: ref).
	#color -> (ref isSymbol ifTrue: [Color gray: 0.85] ifFalse: [])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'182574d6-eb74-d84e-9c6f-1fbf64f6dc24').
(#iconCode -> 'nil').
(#id -> #'494bc6a5-c09d-fc4f-b22f-37955f890e49').
(#isProperty -> true).
(#label -> nil).
(#next -> #'31d2b64c-44d3-5c47-964f-83802a1f927f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#headerText -> 'Implementor').
(#priority -> 1640)
}))
})