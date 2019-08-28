steps
step45f3504e509fdf49b528bc0333f9b718
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:object :array | object class == ViSeparator ifTrue: [ {#text -> ' '} ] ifFalse: [{ #text -> (array flatten joinSeparatedBy: ', ') }]]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'6eeaf025-e453-8b49-bedb-4a2cf2dcdd27').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:39:58.068572 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:object :array | object class == ViSeparator ifTrue: [ {#text -> '' ''} ] ifFalse: [{ #text -> (array flatten joinSeparatedBy: '', '') }]]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6eeaf025-e453-8b49-bedb-4a2cf2dcdd27').
(#iconCode -> 'nil').
(#id -> #'45f3504e-509f-df49-b528-bc0333f9b718').
(#isProperty -> true).
(#label -> nil).
(#next -> #'738b7ab1-10ed-d147-a3b0-90796979a5fc').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:39:58.068572 pm').
(#inputKind -> #(nil nil))
}))
})