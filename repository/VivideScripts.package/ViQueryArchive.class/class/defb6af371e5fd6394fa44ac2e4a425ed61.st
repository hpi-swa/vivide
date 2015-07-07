definitions
defb6af371e5fd6394fa44ac2e4a425ed61
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2015 2:55:12 pm'); yourself)); add: (#id->#'b6af371e-5fd6-394f-a44a-c2e4a425ed61'); add: (#block->[:in :out | [#defaultPropertiesExtended] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | [#defaultPropertiesExtended] value in: [:result |
	(ViQueryInterpreter isCollection: result)
		ifTrue: [out addAll: result]
		ifFalse: [out add: result]]]'); yourself)