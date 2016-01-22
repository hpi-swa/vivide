definitions
def1d92a8e5d139ef4b8c89e9b7f36c881a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:tally | tally process
	ifNil: ['Other Processes']
	ifNotNil: [:p | p browserPrintString escapeHtmlText]]).
(#class -> ViQueryMapDefinition).
(#id -> #'1d92a8e5-d139-ef4b-8c89-e9b7f36c881a').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:tally | tally process
	ifNil: [''Other Processes'']
	ifNotNil: [:p | p browserPrintString escapeHtmlText]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})