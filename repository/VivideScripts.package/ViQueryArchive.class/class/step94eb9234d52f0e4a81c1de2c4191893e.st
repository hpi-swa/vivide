steps
step94eb9234d52f0e4a81c1de2c4191893e
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'53bac4db-9eeb-8b42-b933-09d6154d8d3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 September 2013 12:03:56 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:obj | {
	#text -> (obj at: #fullName).
	#icon -> ((obj at: #admin)
		ifTrue: [UiFugueIcons crownIcon]
		ifFalse: [ViIcons blankIcon])}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'53bac4db-9eeb-8b42-b933-09d6154d8d3d').
(#iconCode -> 'nil').
(#id -> #'94eb9234-d52f-0e4a-81c1-de2c4191893e').
(#isProperty -> true).
(#label -> nil).
(#next -> #'427e325e-4f83-274f-aa3d-b1b3a19ef7e6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 4050)
}))
})