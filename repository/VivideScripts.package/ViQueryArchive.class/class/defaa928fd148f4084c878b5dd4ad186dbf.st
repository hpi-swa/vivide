definitions
defaa928fd148f4084c878b5dd4ad186dbf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:hit | #text -> (((hit at: #info) at: #venue) at: '@journal' ifAbsent: ['-'])]).
(#class -> ViQueryMapDefinition).
(#id -> #'aa928fd1-48f4-084c-878b-5dd4ad186dbf').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:10:45 am')})).
(#sourceCode -> '[:hit | #text -> (((hit at: #info) at: #venue) at: ''@journal'' ifAbsent: [''-''])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})