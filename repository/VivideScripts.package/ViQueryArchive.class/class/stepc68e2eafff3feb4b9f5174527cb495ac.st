steps
stepc68e2eafff3feb4b9f5174527cb495ac
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | {
	"Provide hint about old-style scripts."
	#icon -> (script class == ViScriptStep ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (script baseClass name asText addAttribute: (TextFontReference toFont: Preferences standardButtonFont))}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'dade81d8-25ea-b745-9fab-eccaa538e7b0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | {
	"Provide hint about old-style scripts."
	#icon -> (script class == ViScriptStep ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (script baseClass name asText addAttribute: (TextFontReference toFont: Preferences standardButtonFont))}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'dade81d8-25ea-b745-9fab-eccaa538e7b0').
(#iconCode -> 'nil').
(#id -> #'c68e2eaf-ff3f-eb4b-9f51-74527cb495ac').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm')
}))
})