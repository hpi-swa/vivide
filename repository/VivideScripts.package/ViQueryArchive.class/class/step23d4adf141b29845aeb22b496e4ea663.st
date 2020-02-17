steps
step23d4adf141b29845aeb22b496e4ea663
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'903e00a6-afed-b14d-b5e4-45f59787fc1b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:29:58 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'903e00a6-afed-b14d-b5e4-45f59787fc1b').
(#iconCode -> 'nil').
(#id -> #'23d4adf1-41b2-9845-aeb2-2b496e4ea663').
(#isProperty -> true).
(#label -> nil).
(#next -> #'8579d16a-7ced-f746-8933-90568d7c97e0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ViScriptObject).
(#priority -> 3620)
}))
})