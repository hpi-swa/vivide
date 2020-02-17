steps
stepae3c2d41a7128f44a52acd39fdb3459b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUnknown to: value]
		ifFalse: [line key hasCategory: #callUnknown]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'78f76aff-a285-6a4b-bd3a-9a41b4faf3b0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:13:30 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color green muchDarker) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #callUnknown to: value]
		ifFalse: [line key hasCategory: #callUnknown]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'78f76aff-a285-6a4b-bd3a-9a41b4faf3b0').
(#iconCode -> 'nil').
(#id -> #'ae3c2d41-a712-8f44-a52a-cd39fdb3459b').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e50787c6-1e43-ad46-9f85-4bc28d2d5568').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:13:30 pm').
(#headerText -> #cX).
(#priority -> 5430)
}))
})