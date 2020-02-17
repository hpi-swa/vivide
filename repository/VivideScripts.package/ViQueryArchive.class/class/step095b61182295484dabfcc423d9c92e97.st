steps
step095b61182295484dabfcc423d9c92e97
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:b | { #text -> (b category asText addAttribute: TextColor gray) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'864b0dc5-b065-1148-acd7-ee7897cac14e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 10:31:35.099728 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:b | { #text -> (b category asText addAttribute: TextColor gray) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'864b0dc5-b065-1148-acd7-ee7897cac14e').
(#iconCode -> 'nil').
(#id -> #'095b6118-2295-484d-abfc-c423d9c92e97').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 10:31:35.099728 am').
(#resizeMode -> #spaceFill)
}))
})