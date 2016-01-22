definitions
defd905ce0221929c489eb3ceb8d1ceaf80
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}]).
(#class -> ViQueryMapDefinition).
(#id -> #'d905ce02-2192-9c48-9eb3-ceb8d1ceaf80').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:56:20 pm')})).
(#sourceCode -> '[:obj | {
	#text -> (ProcessBrowser nameAndRulesFor: obj) first.
	#icon -> (obj isSuspended ifTrue: [UiFugueIcons controlPauseSmallIcon] ifFalse: [ViIcons blankIcon])}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})