definitions
def8082cd6248521c498e1623b3ddd626bf
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'12 May 2015 4:43:48 pm'); yourself)); add: (#id->#'8082cd62-4852-1c49-8e16-23b3ddd626bf'); add: (#block->[:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding
		ifTrue: [object value isBehavior
			ifTrue: ['** inheritance **']
			ifFalse: ['** variables **']]
		ifFalse: [object isBehavior
			ifTrue: ['** traits **']
			ifFalse: [object methodClass organization categoryOfElement: object selector]].
	object
	
	} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:object | {
	object isVariableBinding
		ifTrue: [object value isBehavior
			ifTrue: [''** inheritance **'']
			ifFalse: [''** variables **'']]
		ifFalse: [object isBehavior
			ifTrue: [''** traits **'']
			ifFalse: [object methodClass organization categoryOfElement: object selector]].
	object
	
	} asTuples]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)