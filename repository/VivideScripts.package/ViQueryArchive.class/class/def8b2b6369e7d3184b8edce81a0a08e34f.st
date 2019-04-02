definitions
def8b2b6369e7d3184b8edce81a0a08e34f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:definitions | definitions select: [:def | def isUpdateDefinition]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'8b2b6369-e7d3-184b-8edc-e81a0a08e34f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 September 2013 8:27:31 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:definitions | definitions select: [:def | def isUpdateDefinition]] value: in)]')})