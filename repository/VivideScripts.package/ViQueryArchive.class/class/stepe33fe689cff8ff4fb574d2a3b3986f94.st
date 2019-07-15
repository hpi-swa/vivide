steps
stepe33fe689cff8ff4fb574d2a3b3986f94
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'692c8c0e-c410-be46-aad9-bdc1c3d3174b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:29 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'692c8c0e-c410-be46-aad9-bdc1c3d3174b').
(#iconCode -> 'nil').
(#id -> #'e33fe689-cff8-ff4f-b574-d2a3b3986f94').
(#isProperty -> true).
(#label -> nil).
(#next -> #'3544ebd4-2cab-b84a-88d2-0c15dde14360').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:29 pm').
(#headerText -> #DMf).
(#priority -> 5330)
}))
})