steps
stepcfe6ad6fad06774fb19c5dc3bea7243e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:assoc | { assoc key in: [:timestamp |
	timestamp date = Date today
		ifTrue: [timestamp time print24]
		ifFalse: [(timestamp date printFormat: #(1 2 3 $- 1 1 2)), ', ', timestamp time print24]] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'6d70e1a8-c3b4-5645-b670-8094af824d8f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:08:11 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:assoc | { assoc key in: [:timestamp |
	timestamp date = Date today
		ifTrue: [timestamp time print24]
		ifFalse: [(timestamp date printFormat: #(1 2 3 $- 1 1 2)), '', '', timestamp time print24]] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6d70e1a8-c3b4-5645-b670-8094af824d8f').
(#iconCode -> 'nil').
(#id -> #'cfe6ad6f-ad06-774f-b19c-5dc3bea7243e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'b72e75d1-03bb-7541-a46e-39fd55b28333').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:08:11 pm').
(#labelColor -> #AAAAAA).
(#priority -> 3280)
}))
})