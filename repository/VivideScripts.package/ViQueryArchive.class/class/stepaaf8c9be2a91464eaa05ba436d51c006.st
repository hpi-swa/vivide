steps
stepaaf8c9be2a91464eaa05ba436d51c006
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:exTag | {
	#text -> (exTag name asText
		addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
		addAttribute: (TextEmphasis bold);
		addAttribute: (TextColor color: (exTag color brightness < 0.7 ifTrue: [Color white] ifFalse: [Color black]));
		yourself).
	#color -> exTag color}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'c488ed53-2ccc-3543-a6e8-e8d90d6f23f7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 2:45:38.827696 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:exTag | {
	#text -> (exTag name asText
		addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
		addAttribute: (TextEmphasis bold);
		addAttribute: (TextColor color: (exTag color brightness < 0.7 ifTrue: [Color white] ifFalse: [Color black]));
		yourself).
	#color -> exTag color}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c488ed53-2ccc-3543-a6e8-e8d90d6f23f7').
(#iconCode -> 'nil').
(#id -> #'aaf8c9be-2a91-464e-aa05-ba436d51c006').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 March 2020 2:45:38.827696 pm')
}))
})