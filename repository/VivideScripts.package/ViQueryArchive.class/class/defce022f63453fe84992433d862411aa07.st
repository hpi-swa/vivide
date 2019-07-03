definitions
defce022f63453fe84992433d862411aa07
	<definition>

	^ (Dictionary newFrom: {
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
})