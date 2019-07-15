steps
step494f08eafbe58341b949c5ac1b22c09b
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:morph | 
{ #text
		-> (morph printStringLimitedTo: 20).
	#icon
		-> (morph imageForm scaledToSize: 16 @ 16).
	#selectedLater
		-> [[morph addHalo]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'768fe1d5-783e-a546-b83a-016c4db6d552').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:morph | 
{ #text
		-> (morph printStringLimitedTo: 20).
	#icon
		-> (morph imageForm scaledToSize: 16 @ 16).
	#selectedLater
		-> [[morph addHalo]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'768fe1d5-783e-a546-b83a-016c4db6d552').
(#iconCode -> 'nil').
(#id -> #'494f08ea-fbe5-8341-b949-c5ac1b22c09b').
(#isProperty -> true).
(#label -> nil).
(#next -> #'46326a42-9071-7248-8541-10159c34c0a8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 December 2015 10:39:29 am')
}))
})