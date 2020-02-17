steps
stepe95778393b928e4fa413365561ade680
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> 'File in / Do it'.
	#clicked -> [ [changeRecord fileIn] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'1f219126-4aa6-c146-82bc-ec3355f25c46').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 11:47:09 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> ''File in / Do it''.
	#clicked -> [ [changeRecord fileIn] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1f219126-4aa6-c146-82bc-ec3355f25c46').
(#iconCode -> 'nil').
(#id -> #'e9577839-3b92-8e4f-a413-365561ade680').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 11:47:09 am').
(#view -> ViPluggableButtonBarMorph)
}))
})