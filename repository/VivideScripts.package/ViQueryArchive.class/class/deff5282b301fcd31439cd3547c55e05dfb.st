definitions
deff5282b301fcd31439cd3547c55e05dfb
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'1f219126-4aa6-c146-82bc-ec3355f25c46'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 October 2015 2:07 pm'); yourself)); add: (#id->#'f5282b30-1fcd-3143-9cd3-547c55e05dfb'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> 'Load'.
	#clicked -> [ [
		changeRecord fileIn.
		changeRecord methodClass theNonMetaClass == ViScriptArchive localArchive
			ifFalse: [changeRecord methodClass theNonMetaClass mergeSingleSelector: changeRecord methodSelector]
			ifTrue: [ViScriptArchive mergeSingleSelectorInLocalArchive: changeRecord methodSelector]
		
			] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> ''Load''.
	#clicked -> [ [
		changeRecord fileIn.
		changeRecord methodClass theNonMetaClass == ViScriptArchive localArchive
			ifFalse: [changeRecord methodClass theNonMetaClass mergeSingleSelector: changeRecord methodSelector]
			ifTrue: [ViScriptArchive mergeSingleSelectorInLocalArchive: changeRecord methodSelector]
		
			] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)