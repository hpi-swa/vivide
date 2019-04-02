definitions
def62e76fbc2fc9e545b97cf750fae19188
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:entries | entries reject: [:e | e isDirectory]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'62e76fbc-2fc9-e545-b97c-f750fae19188').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '6 December 2013 4:50:48 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:entries | entries reject: [:e | e isDirectory]] value: in)]')})