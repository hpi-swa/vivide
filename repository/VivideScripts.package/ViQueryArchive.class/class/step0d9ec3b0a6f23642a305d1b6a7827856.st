steps
step0d9ec3b0a6f23642a305d1b6a7827856
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {
	#icon -> (def receiverIsCollection
		ifTrue: [ViIconService collection]
		ifFalse: [ViIconService blank]).
	#text -> def inputKind asString}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'67ae669c-22a9-054c-bd81-fc6b015f784c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 5:10:11 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:def | {
	#icon -> (def receiverIsCollection
		ifTrue: [ViIconService collection]
		ifFalse: [ViIconService blank]).
	#text -> def inputKind asString}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'67ae669c-22a9-054c-bd81-fc6b015f784c').
(#iconCode -> 'nil').
(#id -> #'0d9ec3b0-a6f2-3642-a305-d1b6a7827856').
(#isProperty -> true).
(#label -> nil).
(#next -> #'3d9d6bb7-e6bc-5444-b1a3-96219e51fe10').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 5:10:11 pm').
(#priority -> 4910)
}))
})