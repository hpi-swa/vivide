definitions
def41e28d6b077d474bb28ae30838864205
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'41e28d6b-077d-474b-b28a-e30838864205').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 January 2014 4:32:08 pm')})).
(#sourceCode -> '[:objs | objs select: [:o | (o first > 0 or: [o third subclasses notEmpty]) and: [o third isMeta not]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})