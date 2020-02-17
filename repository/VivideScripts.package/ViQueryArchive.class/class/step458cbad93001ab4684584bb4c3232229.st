steps
step458cbad93001ab4684584bb4c3232229
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
(#id -> #'201ff505-9992-194d-a8c0-fb8865e02b8f').
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
(#definition -> #'201ff505-9992-194d-a8c0-fb8865e02b8f').
(#iconCode -> 'nil').
(#id -> #'458cbad9-3001-ab46-8458-4bb4c3232229').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c17a5204-307f-044b-b784-5a13673d0684').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 September 2013 5:47:16 pm').
(#priority -> 3590)
}))
})