definitions
def716cce77e262584da8b0c71abe88be2e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:hit1 :hit2 | (hit1 at: '@score') asInteger >= (hit2 at: '@score') asInteger]).
(#class -> ViQueryMapDefinition).
(#id -> #'716cce77-e262-584d-a8b0-c71abe88be2e').
(#inputKind -> Object).
(#mapType -> #twoArgs).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 May 2014 11:01:22 am')})).
(#sourceCode -> '[:hit1 :hit2 | (hit1 at: ''@score'') asInteger >= (hit2 at: ''@score'') asInteger]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})