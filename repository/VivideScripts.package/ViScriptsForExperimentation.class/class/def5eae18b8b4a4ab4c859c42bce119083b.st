definitions
def5eae18b8b4a4ab4c859c42bce119083b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'dda73356-410e-d14f-96b2-90a253441f34'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 7:07:58 pm'); yourself)); add: (#id->#'5eae18b8-b4a4-ab4c-859c-42bce119083b'); add: (#block->[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [#groups] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)