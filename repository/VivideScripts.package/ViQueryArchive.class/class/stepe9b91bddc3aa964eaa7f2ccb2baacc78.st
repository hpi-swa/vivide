steps
stepe9b91bddc3aa964eaa7f2ccb2baacc78
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:method :behaviors | { 
	#icon -> (ViIconService doObject: method).
	#morph -> (ViMorphService doObject: method).
	#selectable -> (method class ~~ ViSeparator).
	#text -> (ViLabelService doObject: method) }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'4c2adb0d-d47b-9442-a156-ab5eb45b03e3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:24:20.635572 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:method :behaviors | { 
	#icon -> (ViIconService doObject: method).
	#morph -> (ViMorphService doObject: method).
	#selectable -> (method class ~~ ViSeparator).
	#text -> (ViLabelService doObject: method) }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4c2adb0d-d47b-9442-a156-ab5eb45b03e3').
(#iconCode -> 'nil').
(#id -> #'e9b91bdd-c3aa-964e-aa7f-2ccb2baacc78').
(#isProperty -> true).
(#label -> nil).
(#next -> #'c6ab183e-68d3-6841-ae9a-afad5e73c5d0').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:24:20.633572 pm').
(#inputKind -> #(nil nil))
}))
})