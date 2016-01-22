definitions
def60fafc9217ae4b40af17c13b35d42e25
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | #text -> ('<font color="#AAAAAA">', (step definition
	ifNil: ['ref']
	ifNotNil: [:def | def references size asString]), '</font>') asHtmlText ]).
(#class -> ViQueryMapDefinition).
(#id -> #'60fafc92-17ae-4b40-af17-c13b35d42e25').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:24:01 pm')})).
(#sourceCode -> '[:step | #text -> (''<font color="#AAAAAA">'', (step definition
	ifNil: [''ref'']
	ifNotNil: [:def | def references size asString]), ''</font>'') asHtmlText ]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})