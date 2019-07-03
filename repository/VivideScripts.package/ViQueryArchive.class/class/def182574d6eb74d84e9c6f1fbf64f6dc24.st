definitions
def182574d6eb74d84e9c6f1fbf64f6dc24
	<definition>

	^ (Dictionary newFrom: {
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
})