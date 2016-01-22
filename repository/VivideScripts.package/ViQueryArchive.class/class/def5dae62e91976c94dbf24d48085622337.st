definitions
def5dae62e91976c94dbf24d48085622337
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes
		reject: [:c | classes includes: c superclass]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'5dae62e9-1976-c94d-bf24-d48085622337').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:52:58 am')})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes
		reject: [:c | classes includes: c superclass]] value: in)]')})