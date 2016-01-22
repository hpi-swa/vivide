definitions
defce43fc0e5e438649b12f662c9ac7d2a7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples asGroups ] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'ce43fc0e-5e43-8649-b12f-662c9ac7d2a7').
(#properties -> (Dictionary newFrom: {
(#copyOf -> #'17e5fd35-6230-f348-a789-da694c0d0f55').
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '15 June 2015 10:20:57 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples asGroups ] value: in)]')})