definitions
deff559eda9e9093c408666c1fa71a4c3e5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'f559eda9-e909-3c40-8666-c1fa71a4c3e5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:entry | entry isDirectory not and: [#(jpg png gif) includes: entry extension]]] value: in)]')})