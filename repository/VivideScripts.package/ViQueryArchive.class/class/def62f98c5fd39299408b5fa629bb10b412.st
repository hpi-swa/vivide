definitions
def62f98c5fd39299408b5fa629bb10b412
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objs | objs gather: [:obj | obj categories]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'62f98c5f-d392-9940-8b5f-a629bb10b412').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:objs | objs gather: [:obj | obj categories]] value: in)]')
})