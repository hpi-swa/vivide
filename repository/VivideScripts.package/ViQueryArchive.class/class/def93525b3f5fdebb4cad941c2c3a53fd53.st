definitions
def93525b3f5fdebb4cad941c2c3a53fd53
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | {
	#icon -> (step class == ViScriptPart ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClassName asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	]).
(#class -> ViQueryMapDefinition).
(#id -> #'93525b3f-5fde-bb4c-ad94-1c2c3a53fd53').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:29:42 pm')})).
(#sourceCode -> '[:step | {
	#icon -> (step class == ViScriptPart ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClassName asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})