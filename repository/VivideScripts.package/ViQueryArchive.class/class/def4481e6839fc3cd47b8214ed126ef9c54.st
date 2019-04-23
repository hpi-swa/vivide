definitions
def4481e6839fc3cd47b8214ed126ef9c54
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs asSet asOrderedCollection] value: in)]).
(#class -> ViScriptDefinition).
(#id -> #'4481e683-9fc3-cd47-b821-4ed126ef9c54').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs asSet asOrderedCollection] value: in)]')})