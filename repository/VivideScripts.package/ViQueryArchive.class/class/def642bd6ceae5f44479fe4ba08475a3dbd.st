definitions
def642bd6ceae5f44479fe4ba08475a3dbd
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | obj isBehavior ifTrue: [obj subclasses] ifFalse: [#()]]).
(#class -> ViQueryMapDefinition).
(#id -> #'642bd6ce-ae5f-4447-9fe4-ba08475a3dbd').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 7:05:18 pm')})).
(#sourceCode -> '[:obj | obj isBehavior ifTrue: [obj subclasses] ifFalse: [#()]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})