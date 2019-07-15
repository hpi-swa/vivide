steps
step9d1f7dc5d93e274bb732b08a5181ea6f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
	#icon -> (step class == ViScriptStep ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClass name asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'89dbfbbf-b881-8a44-9e79-8c2582f4f0e8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:29:42 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
	#icon -> (step class == ViScriptStep ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClass name asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'89dbfbbf-b881-8a44-9e79-8c2582f4f0e8').
(#iconCode -> 'nil').
(#id -> #'9d1f7dc5-d93e-274b-b732-b08a5181ea6f').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c4cd5013-fa6d-7a44-966e-79cfcaa59612').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:29:42 pm').
(#priority -> 2410)
}))
})