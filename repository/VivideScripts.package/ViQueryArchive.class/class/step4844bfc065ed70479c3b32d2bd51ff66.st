steps
step4844bfc065ed70479c3b32d2bd51ff66
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:exNote | {
	#text -> ((exNote tags collect: [:tag | tag name asString]) joinSeparatedBy: ', ')
	
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'4abd754a-b6ec-7342-8df1-3cc72cf84bd1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 September 2020 10:06:41.128174 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:exNote | {
	#text -> ((exNote tags collect: [:tag | tag name asString]) joinSeparatedBy: '', '')
	
	}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'4abd754a-b6ec-7342-8df1-3cc72cf84bd1').
(#iconCode -> 'nil').
(#id -> #'4844bfc0-65ed-7047-9c3b-32d2bd51ff66').
(#isProperty -> true).
(#label -> nil).
(#next -> #'12c8f944-6154-604a-b57f-6af32a469773').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 September 2020 10:06:41.127174 am')
}))
})