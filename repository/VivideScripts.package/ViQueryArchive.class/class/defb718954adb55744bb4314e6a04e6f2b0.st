definitions
defb718954adb55744bb4314e6a04e6f2b0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:objects | objects select: [:def | def first >= 0]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'b718954a-db55-744b-b431-4e6a04e6f2b0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:objects | objects select: [:def | def first >= 0]] value: in)]')})