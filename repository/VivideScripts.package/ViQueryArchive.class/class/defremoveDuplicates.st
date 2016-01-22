definitions
defremoveDuplicates
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:objs | objs asSet asOrderedCollection]).
(#class -> ViQueryMapDefinition).
(#id -> #removeDuplicates).
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:objs | objs asSet asOrderedCollection]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})