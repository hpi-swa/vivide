definitions
def5461ed6457d6df478ea96c72de426d1d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:step | (step steps collect: [:s | s category ifNil: #default]) asSet asArray asString]).
(#class -> ViQueryMapDefinition).
(#id -> #'5461ed64-57d6-df47-8ea9-6c72de426d1d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 December 2013 11:55:55 am')})).
(#sourceCode -> '[:step | (step steps collect: [:s | s category ifNil: #default]) asSet asArray asString]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})