steps
stepa58a2d7b43281740a7b5288db0764a2b
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
(#id -> #'80e4df8f-da7e-e94c-b861-23e0e23d386d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm')
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
(#definition -> #'80e4df8f-da7e-e94c-b861-23e0e23d386d').
(#iconCode -> 'nil').
(#id -> #'a58a2d7b-4328-1740-a7b5-288db0764a2b').
(#isProperty -> true).
(#label -> nil).
(#next -> #'b15f906e-0d17-994c-9585-d7487285b6d2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm')
}))
})