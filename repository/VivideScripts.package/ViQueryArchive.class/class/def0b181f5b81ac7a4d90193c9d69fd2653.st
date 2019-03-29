definitions
def0b181f5b81ac7a4d90193c9d69fd2653
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'0b181f5b-81ac-7a4d-9019-3c9d69fd2653').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 March 2019 2:44:51.105235 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]')})