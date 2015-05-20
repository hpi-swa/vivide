definitions
defc77245e2be55c749a0b3b89f7bad59d9
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:43:15 pm'); yourself)); add: (#id->#'c77245e2-be55-c749-a0b3-b89f7bad59d9'); add: (#block->[:in :out | (
	[:objects | objects collect: [:package | | result |
	result := OrderedCollection new.
	result addAll: package classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (package perform: check) ifTrue: [result add: script -> (package perform: script)]].
	result]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:package | | result |
	result := OrderedCollection new.
	result addAll: package classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (package perform: check) ifTrue: [result add: script -> (package perform: script)]].
	result]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)