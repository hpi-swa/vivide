definitions
deff5282b301fcd31439cd3547c55e05dfb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> 'Load'.
	#clicked -> [ [
		changeRecord fileIn.
		changeRecord methodClass theNonMetaClass == ViScriptArchive localArchive
			ifFalse: [changeRecord methodClass theNonMetaClass mergeSingleSelector: changeRecord methodSelector]
			ifTrue: [ViScriptArchive mergeSingleSelectorInLocalArchive: changeRecord methodSelector]
		
			] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f5282b30-1fcd-3143-9cd3-547c55e05dfb').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'1f219126-4aa6-c146-82bc-ec3355f25c46').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> ''Load''.
	#clicked -> [ [
		changeRecord fileIn.
		changeRecord methodClass theNonMetaClass == ViScriptArchive localArchive
			ifFalse: [changeRecord methodClass theNonMetaClass mergeSingleSelector: changeRecord methodSelector]
			ifTrue: [ViScriptArchive mergeSingleSelectorInLocalArchive: changeRecord methodSelector]
		
			] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})