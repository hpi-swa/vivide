definitions
defd77d8164faa6574d9abcf9712d2c6d20
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:hit | #text -> (((hit at: #info) at: #venue) at: '@conference' ifAbsent: ['-'])]).
(#class -> ViQueryMapDefinition).
(#id -> #'d77d8164-faa6-574d-9abc-f9712d2c6d20').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:09:25 am')})).
(#sourceCode -> '[:hit | #text -> (((hit at: #info) at: #venue) at: ''@conference'' ifAbsent: [''-''])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})