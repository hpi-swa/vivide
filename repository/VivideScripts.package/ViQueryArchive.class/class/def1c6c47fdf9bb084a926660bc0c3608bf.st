definitions
def1c6c47fdf9bb084a926660bc0c3608bf
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples sorted: [:t1 :t2 | t1 second asString <= t2 second asString]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'1c6c47fd-f9bb-084a-9266-60bc0c3608bf').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'41d0c7aa-b491-cc49-a8b7-1f9182c1d35d').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 4:36:46 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples sorted: [:t1 :t2 | t1 second asString <= t2 second asString]] value: in)]')})