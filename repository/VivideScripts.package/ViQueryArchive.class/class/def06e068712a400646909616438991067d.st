definitions
def06e068712a400646909616438991067d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | #text -> (step label ifNotNil: [:lbl | ('<b>', lbl, '</b>') asHtmlText])]).
(#class -> ViQueryMapDefinition).
(#id -> #'06e06871-2a40-0646-9096-16438991067d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:18:19 pm')})).
(#sourceCode -> '[:step | #text -> (step label ifNotNil: [:lbl | (''<b>'', lbl, ''</b>'') asHtmlText])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})