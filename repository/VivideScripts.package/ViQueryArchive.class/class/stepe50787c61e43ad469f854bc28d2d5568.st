steps
stepe50787c61e43ad469f854bc28d2d5568
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #check to: value]
		ifFalse: [line key hasCategory: #check]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'3371c03b-7347-454a-a592-06b6b4f97a8c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:56:38 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #check to: value]
		ifFalse: [line key hasCategory: #check]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'3371c03b-7347-454a-a592-06b6b4f97a8c').
(#iconCode -> 'nil').
(#id -> #'e50787c6-1e43-ad46-9f85-4bc28d2d5568').
(#isProperty -> true).
(#label -> nil).
(#next -> #'00ab51d8-69dd-fb4a-90da-3e9a2f70ef75').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 10:56:38 am').
(#headerText -> #t).
(#priority -> 5440)
}))
})