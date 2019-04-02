definitions
def5d21216a0b209e4693364320f1403995
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples
		sorted: [:t1 :t2 | t1 second asString <= t2 second asString]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'5d21216a-0b20-9e46-9336-4320f1403995').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 April 2019 3:12:48.396594 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples
		sorted: [:t1 :t2 | t1 second asString <= t2 second asString]] value: in)]')})