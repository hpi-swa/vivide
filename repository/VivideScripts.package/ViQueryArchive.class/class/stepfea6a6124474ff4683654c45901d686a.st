steps
stepfea6a6124474ff4683654c45901d686a
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:mCPackage :array | { #text -> array size }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'51734d13-d619-f147-82c8-7473c90fc070').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:18:50.236086 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:mCPackage :array | { #text -> array size }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'51734d13-d619-f147-82c8-7473c90fc070').
(#iconCode -> 'nil').
(#id -> #'fea6a612-4474-ff46-8365-4c45901d686a').
(#isProperty -> true).
(#label -> nil).
(#next -> #'13b3049f-5783-444d-9dac-479f91ffdfef').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:18:50.236086 am').
(#headerText -> 'Count / Ancestry').
(#inputKind -> #(nil nil))
}))
})