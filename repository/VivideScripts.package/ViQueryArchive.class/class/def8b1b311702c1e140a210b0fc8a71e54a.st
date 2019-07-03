definitions
def8b1b311702c1e140a210b0fc8a71e54a
	<definition>

	^ (Dictionary newFrom: {
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
})