definitions
def17e5fd356230f348a789da694c0d0f55
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:tuples | tuples asGroups ] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'17e5fd35-6230-f348-a789-da694c0d0f55').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 May 2015 6:23:49 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:tuples | tuples asGroups ] value: in)]')})