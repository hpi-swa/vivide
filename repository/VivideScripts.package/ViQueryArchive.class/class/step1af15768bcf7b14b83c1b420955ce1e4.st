steps
step1af15768bcf7b14b83c1b420955ce1e4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
(#className -> #ViScriptDefinition).
(#id -> #'f5282b30-1fcd-3143-9cd3-547c55e05dfb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm')
})).
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
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f5282b30-1fcd-3143-9cd3-547c55e05dfb').
(#iconCode -> 'nil').
(#id -> #'1af15768-bcf7-b14b-83c1-b420955ce1e4').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm').
(#view -> ViPluggableButtonBarMorph)
}))
})