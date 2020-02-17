steps
step351577f4844119438f3cfed16aa6769d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:class :filter | {
	#text -> ((ViObjectOriginService doObject: class) asText
				addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
				yourself)}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'d28f8b56-ae76-6f45-b5df-3f51c8b39b65').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 August 2019 4:58:57.583152 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:class :filter | {
	#text -> ((ViObjectOriginService doObject: class) asText
				addAttribute: (TextFontReference toFont: Preferences standardButtonFont);
				yourself)}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'d28f8b56-ae76-6f45-b5df-3f51c8b39b65').
(#iconCode -> 'nil').
(#id -> #'351577f4-8441-1943-8f3c-fed16aa6769d').
(#isProperty -> true).
(#label -> nil).
(#next -> #'55770d7e-f791-354c-a84e-9115c67743d2').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 August 2019 4:58:57.583152 pm').
(#inputKind -> #(nil nil))
}))
})