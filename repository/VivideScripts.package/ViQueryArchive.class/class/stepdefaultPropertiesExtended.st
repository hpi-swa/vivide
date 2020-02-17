steps
stepdefaultPropertiesExtended
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (ViLabelService doObject: object).
	#icon -> (ViIconService doObject: object).
	#morph -> (ViMorphService doObject: object).
	#selectable -> (object class ~~ ViSeparator).
	#tooltip -> [ViObjectPreviewHandler doObject: object]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'81e09cb2-b3ab-b345-b591-fd828ea01434').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:52:45 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | {
	#text -> (ViLabelService doObject: object).
	#icon -> (ViIconService doObject: object).
	#morph -> (ViMorphService doObject: object).
	#selectable -> (object class ~~ ViSeparator).
	#tooltip -> [ViObjectPreviewHandler doObject: object]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'81e09cb2-b3ab-b345-b591-fd828ea01434').
(#iconCode -> 'nil').
(#id -> #defaultPropertiesExtended).
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #()).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 May 2015 2:52:45 pm')
}))
})