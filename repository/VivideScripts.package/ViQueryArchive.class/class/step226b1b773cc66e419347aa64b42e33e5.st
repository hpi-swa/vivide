steps
step226b1b773cc66e419347aa64b42e33e5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:package :tails | { #text -> package name }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'a078d37d-2ede-6c44-8be7-6dbd2c03ecf8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:15:56.740086 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:package :tails | { #text -> package name }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'a078d37d-2ede-6c44-8be7-6dbd2c03ecf8').
(#iconCode -> 'nil').
(#id -> #'226b1b77-3cc6-6e41-9347-aa64b42e33e5').
(#isProperty -> true).
(#label -> nil).
(#next -> #'fea6a612-4474-ff46-8365-4c45901d686a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2019 10:15:56.740086 am').
(#headerText -> 'Package / Version').
(#inputKind -> #(nil nil))
}))
})