steps
step5406f229d72e9840a58dc61752a3b24a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (  'line ', flag line asString ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'5b769677-da05-e745-88b8-1321cef197a9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 9:12:52 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:flag | { #text -> (  ''line '', flag line asString ) } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5b769677-da05-e745-88b8-1321cef197a9').
(#iconCode -> 'nil').
(#id -> #'5406f229-d72e-9840-a58d-c61752a3b24a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'578f3d1f-bdb5-b04b-85ff-fe0c848c6af5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:49:48 pm').
(#headerText -> 'Line').
(#labelColor -> '000000').
(#priority -> 4030)
}))
})