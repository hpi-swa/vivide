definitions
defb45c17afa58f0e4c9df3a0fe684a4ae0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 October 2015 10:58:50 am'); yourself)); add: (#id->#'b45c17af-a58f-0e4c-9df3-a0fe684a4ae0'); add: (#block->[:in :out | ([:all | all collect: [:o | (
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
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
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
			value: in) do: [:result | out add: result]]'); yourself)