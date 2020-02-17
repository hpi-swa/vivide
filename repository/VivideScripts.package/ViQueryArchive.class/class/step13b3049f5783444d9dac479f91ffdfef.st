steps
step13b3049f5783444d9dac479f91ffdfef
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:mCPackage :array | { 
	#text -> mCPackage workingCopy repositoryGroup description }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'4268b965-b38e-c249-bd7d-9d23406376c7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 November 2019 2:17:49.748544 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:mCPackage :array | { 
	#text -> mCPackage workingCopy repositoryGroup description }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4268b965-b38e-c249-bd7d-9d23406376c7').
(#iconCode -> 'nil').
(#id -> #'13b3049f-5783-444d-9dac-479f91ffdfef').
(#isProperty -> true).
(#label -> nil).
(#next -> #'e62cf51d-8e7a-c34a-875b-f5017120a878').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 November 2019 2:17:49.748544 pm').
(#headerText -> 'Repos / Message').
(#inputKind -> #(nil nil)).
(#lineWrap -> true).
(#resizeMode -> #spaceFill)
}))
})