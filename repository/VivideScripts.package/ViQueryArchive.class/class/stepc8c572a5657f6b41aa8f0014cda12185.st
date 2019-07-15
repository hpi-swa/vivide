steps
stepc8c572a5657f6b41aa8f0014cda12185
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'7f4c6767-016e-4c44-afad-b613aa6dafff').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:09:25 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'7f4c6767-016e-4c44-afad-b613aa6dafff').
(#iconCode -> 'nil').
(#id -> #'c8c572a5-657f-6b41-aa8f-0014cda12185').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c70e68dd-9e93-cc44-a8c3-5fe0395e21ac').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:09:25 pm').
(#headerText -> #DO).
(#priority -> 5350)
}))
})