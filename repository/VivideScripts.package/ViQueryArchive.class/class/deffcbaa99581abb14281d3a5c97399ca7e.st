definitions
deffcbaa99581abb14281d3a5c97399ca7e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:dirs | dirs gather: [:dir | dir entries]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'fcbaa995-81ab-b142-81d3-a5c97399ca7e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:dirs | dirs gather: [:dir | dir entries]] value: in)]')})