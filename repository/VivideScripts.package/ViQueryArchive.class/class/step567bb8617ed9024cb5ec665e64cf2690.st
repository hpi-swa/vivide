steps
step567bb8617ed9024cb5ec665e64cf2690
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:item | | pt | { 
	#point -> (pt := (item at: 'Stride') asNumber @ (item at: 'stride_lengths') asNumber).
	#color -> ((item at: 'exp_num') caseOf: {
		['11'] -> [Color r: 0 g: 155/255 b: 178/255]. "small"
		['22'] -> [Color r: 0 g: 55/255 b: 227/255]. "normal"
		['33'] -> [Color r: 0 g: 1 b: 0.5]. "large"
	} otherwise: [Color red]).
	#doubleClicked -> [[ item explore ]].
	#deletePressed -> [[ 
		(self confirm: ('Mark {1} as outlier?' format: {pt}))
			ifTrue: [item at: 'is_outlier' put: '1'. ViEventNotifier trigger: #gait] ]].
	#tooltip -> ('# {1}\X {2}\Y {3}\\Double-click to explore.\Select and [DEL] to mark.' withCRs
		format: {item at: '#' . pt x . pt y })} ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'6fe536ce-57b2-a240-aa40-9e3f33c44bb5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '30 September 2020 12:42:55.143427 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:item | | pt | { 
	#point -> (pt := (item at: ''Stride'') asNumber @ (item at: ''stride_lengths'') asNumber).
	#color -> ((item at: ''exp_num'') caseOf: {
		[''11''] -> [Color r: 0 g: 155/255 b: 178/255]. "small"
		[''22''] -> [Color r: 0 g: 55/255 b: 227/255]. "normal"
		[''33''] -> [Color r: 0 g: 1 b: 0.5]. "large"
	} otherwise: [Color red]).
	#doubleClicked -> [[ item explore ]].
	#deletePressed -> [[ 
		(self confirm: (''Mark {1} as outlier?'' format: {pt}))
			ifTrue: [item at: ''is_outlier'' put: ''1''. ViEventNotifier trigger: #gait] ]].
	#tooltip -> (''# {1}\X {2}\Y {3}\\Double-click to explore.\Select and [DEL] to mark.'' withCRs
		format: {item at: ''#'' . pt x . pt y })} ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6fe536ce-57b2-a240-aa40-9e3f33c44bb5').
(#iconCode -> 'nil').
(#id -> #'567bb861-7ed9-024c-b5ec-665e64cf2690').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '30 September 2020 12:42:55.143427 pm')
}))
})