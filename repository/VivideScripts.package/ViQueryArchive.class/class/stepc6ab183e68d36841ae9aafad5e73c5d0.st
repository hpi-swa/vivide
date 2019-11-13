steps
stepc6ab183e68d36841ae9aafad5e73c5d0
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:object :array | object class == ViSeparator ifTrue: [{ #text -> ' ' }] ifFalse: [{ 
	#text -> array size.
	#color -> (array size = 1 ifTrue: [Color moss alpha: 0.3] ifFalse: [array size > 3 ifTrue: [Color red alpha: 0.3]]) }]]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5231b4b5-0c9d-c941-a03f-4c7036cfacee').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:30:11.535572 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:object :array | object class == ViSeparator ifTrue: [{ #text -> '' '' }] ifFalse: [{ 
	#text -> array size.
	#color -> (array size = 1 ifTrue: [Color moss alpha: 0.3] ifFalse: [array size > 3 ifTrue: [Color red alpha: 0.3]]) }]]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5231b4b5-0c9d-c941-a03f-4c7036cfacee').
(#iconCode -> 'nil').
(#id -> #'c6ab183e-68d3-6841-ae9a-afad5e73c5d0').
(#isProperty -> true).
(#label -> nil).
(#next -> #'83e798e6-8b86-d340-90fc-4a5ddf0d7351').
(#properties -> (Dictionary newFrom: {
(#after -> #()).
(#before -> #()).
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:30:11.534572 pm').
(#inputKind -> #(nil nil))
}))
})