steps
step9a8f7fe5e3fe5e4e8f65c463b0cac3e9
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'f5499ecb-55d4-5643-a59c-ff7b84874734').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:14 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f5499ecb-55d4-5643-a59c-ff7b84874734').
(#iconCode -> 'nil').
(#id -> #'9a8f7fe5-e3fe-5e4e-8f65-c463b0cac3e9').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e33fe689-cff8-ff4f-b574-d2a3b3986f94').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:14 pm').
(#headerText -> #DMr).
(#priority -> 5320)
}))
})