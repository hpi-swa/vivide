definitions
defb866d5b8d4d7744396d0241ce986ce5f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:object | 
	| numNewAccesses ignore |
	ignore := object class == ViSeparator or: [object key instVarNames includes: object value].
	numNewAccesses := ignore
		ifTrue: [5]
		ifFalse: [(SystemNavigation default allSuperAccessesTo: object value from: object key) size]. 
		
		{
		#text -> (ignore ifTrue: [' '] ifFalse: [numNewAccesses]).
		#color -> (numNewAccesses = 0
			ifTrue: [(Color gray: 0.8) alpha: 0.3]
			ifFalse: [numNewAccesses <= 2
				ifTrue: [Color moss alpha: 0.3]
				ifFalse: [numNewAccesses > 10 ifTrue: [Color red alpha: 0.3] ifFalse: ["white"]]]).
			 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b866d5b8-d4d7-7443-96d0-241ce986ce5f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '10 April 2019 11:09:43.02611 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:object | 
	| numNewAccesses ignore |
	ignore := object class == ViSeparator or: [object key instVarNames includes: object value].
	numNewAccesses := ignore
		ifTrue: [5]
		ifFalse: [(SystemNavigation default allSuperAccessesTo: object value from: object key) size]. 
		
		{
		#text -> (ignore ifTrue: ['' ''] ifFalse: [numNewAccesses]).
		#color -> (numNewAccesses = 0
			ifTrue: [(Color gray: 0.8) alpha: 0.3]
			ifFalse: [numNewAccesses <= 2
				ifTrue: [Color moss alpha: 0.3]
				ifFalse: [numNewAccesses > 10 ifTrue: [Color red alpha: 0.3] ifFalse: ["white"]]]).
			 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})