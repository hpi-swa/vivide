steps
step012db9f44e1ecc49aa55265d82592ec7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> (changeRecord type caseOf: {
		[#method] -> [changeRecord methodClass name, ' >> ', changeRecord methodSelector]}
			otherwise: [changeRecord string]).
	#color -> (changeRecord type == #classComment
		ifFalse: [nil] ifTrue: [Color yellow alpha: 0.5]).
	#icon -> (changeRecord type caseOf: {
		[#doIt] -> [(changeRecord string includesSubstring: 'subclass:' caseSensitive: true)
			ifTrue: [UiSilkIcons carIcon]
			ifFalse: [(changeRecord string beginsWith: '----SNAPSHOT')
				ifTrue: [UiSilkIcons bulletDiskIcon]
				ifFalse: [UiFugueIcons gearSmallIcon]]].
		[#method] -> [(MethodReference class: changeRecord methodClass selector: changeRecord methodSelector) in: [:ref | ViIconService doObject: ref]].
		[#classComment] -> [UiSilkIcons commentIcon] } otherwise: [ViIcons blankIcon])
	 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b45c17af-a58f-0e4c-9df3-a0fe684a4ae0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 10:58:50 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> (changeRecord type caseOf: {
		[#method] -> [changeRecord methodClass name, '' >> '', changeRecord methodSelector]}
			otherwise: [changeRecord string]).
	#color -> (changeRecord type == #classComment
		ifFalse: [nil] ifTrue: [Color yellow alpha: 0.5]).
	#icon -> (changeRecord type caseOf: {
		[#doIt] -> [(changeRecord string includesSubstring: ''subclass:'' caseSensitive: true)
			ifTrue: [UiSilkIcons carIcon]
			ifFalse: [(changeRecord string beginsWith: ''----SNAPSHOT'')
				ifTrue: [UiSilkIcons bulletDiskIcon]
				ifFalse: [UiFugueIcons gearSmallIcon]]].
		[#method] -> [(MethodReference class: changeRecord methodClass selector: changeRecord methodSelector) in: [:ref | ViIconService doObject: ref]].
		[#classComment] -> [UiSilkIcons commentIcon] } otherwise: [ViIcons blankIcon])
	 }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b45c17af-a58f-0e4c-9df3-a0fe684a4ae0').
(#iconCode -> 'nil').
(#id -> #'012db9f4-4e1e-cc49-aa55-265d82592ec7').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 10:58:50 am')
}))
})