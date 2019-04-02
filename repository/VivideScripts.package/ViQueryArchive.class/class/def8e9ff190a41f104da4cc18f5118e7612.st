definitions
def8e9ff190a41f104da4cc18f5118e7612
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:obj | obj third notNil]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'8e9ff190-a41f-104d-a4cc-18f5118e7612').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 4:21:57 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:obj | obj third notNil]] value: in)]')})