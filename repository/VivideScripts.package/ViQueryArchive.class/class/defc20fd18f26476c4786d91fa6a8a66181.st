definitions
defc20fd18f26476c4786d91fa6a8a66181
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 October 2015 11:05:10 am'); yourself)); add: (#id->#'c20fd18f-2647-6c47-86d9-1fa6a8a66181'); add: (#block->[:in :out | out addAll: ([:protocols | protocols sorted: [:a :b | a baseName asLowercase <= b baseName asLowercase]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:protocols | protocols sorted: [:a :b | a baseName asLowercase <= b baseName asLowercase]] value: in)]'); yourself)