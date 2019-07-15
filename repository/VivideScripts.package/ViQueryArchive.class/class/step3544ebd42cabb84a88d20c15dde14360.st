steps
step3544ebd42cabb84a88d20c15dde14360
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelAdditional to: value]
		ifFalse: [line key hasCategory: #dataModelAdditional]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'15b5a43f-9ee3-8a4d-8f7c-d4a82a0de634').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:55 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelAdditional to: value]
		ifFalse: [line key hasCategory: #dataModelAdditional]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'15b5a43f-9ee3-8a4d-8f7c-d4a82a0de634').
(#iconCode -> 'nil').
(#id -> #'3544ebd4-2cab-b84a-88d2-0c15dde14360').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c8c572a5-657f-6b41-aa8f-0014cda12185').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:55 pm').
(#headerText -> #DMa).
(#priority -> 5340)
}))
})