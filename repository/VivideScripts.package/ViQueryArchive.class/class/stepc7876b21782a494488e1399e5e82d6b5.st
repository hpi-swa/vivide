steps
stepc7876b21782a494488e1399e5e82d6b5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:foo | 
	| numAccesses |
	numAccesses := foo class == ViSeparator ifTrue: [5] ifFalse: [(SystemNavigation default allAccessesTo: foo value from: foo key) size].
	{
		#text -> (foo class == ViSeparator ifTrue: [' '] ifFalse: [numAccesses]).
		#color -> (numAccesses = 0
			ifTrue: [(Color gray: 0.8) alpha: 0.3]
			ifFalse: [numAccesses <= 2
				ifTrue: [Color moss alpha: 0.3]
				ifFalse: [numAccesses > 10 ifTrue: [Color red alpha: 0.3] ifFalse: ["white"]]]).
			 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'8b1b3117-02c1-e140-a210-b0fc8a71e54a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:28:47 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:foo | 
	| numAccesses |
	numAccesses := foo class == ViSeparator ifTrue: [5] ifFalse: [(SystemNavigation default allAccessesTo: foo value from: foo key) size].
	{
		#text -> (foo class == ViSeparator ifTrue: ['' ''] ifFalse: [numAccesses]).
		#color -> (numAccesses = 0
			ifTrue: [(Color gray: 0.8) alpha: 0.3]
			ifFalse: [numAccesses <= 2
				ifTrue: [Color moss alpha: 0.3]
				ifFalse: [numAccesses > 10 ifTrue: [Color red alpha: 0.3] ifFalse: ["white"]]]).
			 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8b1b3117-02c1-e140-a210-b0fc8a71e54a').
(#iconCode -> 'nil').
(#id -> #'c7876b21-782a-4944-88e1-399e5e82d6b5').
(#isProperty -> true).
(#label -> nil).
(#next -> #'20b77a9d-a691-b74e-950a-df46a318513c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:28:47 am')
}))
})