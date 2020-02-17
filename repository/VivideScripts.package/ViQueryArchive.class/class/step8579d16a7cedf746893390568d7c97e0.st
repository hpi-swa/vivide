steps
step8579d16a7cedf746893390568d7c97e0
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step  | {
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5f906dca-7493-5644-b7f0-b981e9f82243').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:31:08 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step  | {
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5f906dca-7493-5644-b7f0-b981e9f82243').
(#iconCode -> 'nil').
(#id -> #'8579d16a-7ced-f746-8933-90568d7c97e0').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:31:08 am').
(#headerText -> '2').
(#inputKind -> ViScriptObject).
(#labelColor -> #'000000').
(#priority -> 3630)
}))
})