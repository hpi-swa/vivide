definitions
def51d9c6f145c9814c8d676864979fb6a0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]).
(#class -> ViQueryMapDefinition).
(#id -> #'51d9c6f1-45c9-814c-8d67-6864979fb6a0').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 May 2014 2:35:39 pm')})).
(#sourceCode -> '[:json | (((json at: #result) at: #hits) at: #hit) ifNil: [#()]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})