steps
step20b77a9da691b74e950adf46a318513c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | 
	| numNewAccesses |
	numNewAccesses := object class == ViSeparator ifTrue: [5] ifFalse: [(SystemNavigation default allLocalAccessesTo: object value from: object key) size]. 
		
		{
		#text -> (object class == ViSeparator ifTrue: [' '] ifFalse: [numNewAccesses]).
		#color -> (numNewAccesses = 0
			ifTrue: [(Color gray: 0.8) alpha: 0.3]
			ifFalse: [numNewAccesses <= 2
				ifTrue: [Color moss alpha: 0.3]
				ifFalse: [numNewAccesses > 10 ifTrue: [Color red alpha: 0.3] ifFalse: ["white"]]]).
			 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'ce022f63-453f-e849-9243-3d862411aa07').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 April 2019 10:48:23.62511 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | 
	| numNewAccesses |
	numNewAccesses := object class == ViSeparator ifTrue: [5] ifFalse: [(SystemNavigation default allLocalAccessesTo: object value from: object key) size]. 
		
		{
		#text -> (object class == ViSeparator ifTrue: ['' ''] ifFalse: [numNewAccesses]).
		#color -> (numNewAccesses = 0
			ifTrue: [(Color gray: 0.8) alpha: 0.3]
			ifFalse: [numNewAccesses <= 2
				ifTrue: [Color moss alpha: 0.3]
				ifFalse: [numNewAccesses > 10 ifTrue: [Color red alpha: 0.3] ifFalse: ["white"]]]).
			 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'ce022f63-453f-e849-9243-3d862411aa07').
(#iconCode -> 'nil').
(#id -> #'20b77a9d-a691-b74e-950a-df46a318513c').
(#isProperty -> true).
(#label -> nil).
(#next -> #'8ebf9a99-5fb3-ba48-ae1e-e67f7a28e0ed').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 April 2019 10:48:23.62511 am')
}))
})