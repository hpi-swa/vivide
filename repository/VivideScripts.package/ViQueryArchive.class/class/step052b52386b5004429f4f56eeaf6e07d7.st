steps
step052b52386b5004429f4f56eeaf6e07d7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> ((script priority >= 9999 ifFalse: [script priority]) asString asText addAttribute: (TextFontReference toFont: Preferences standardButtonFont); addAttribute: TextColor gray)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'e7b1027a-2aa4-634b-ac62-fdbf47813e8e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:42:44 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | { #text -> ((script priority >= 9999 ifFalse: [script priority]) asString asText addAttribute: (TextFontReference toFont: Preferences standardButtonFont); addAttribute: TextColor gray)}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'e7b1027a-2aa4-634b-ac62-fdbf47813e8e').
(#iconCode -> 'nil').
(#id -> #'052b5238-6b50-0442-9f4f-56eeaf6e07d7').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c68e2eaf-ff3f-eb4b-9f51-74527cb495ac').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:42:44 am')
}))
})