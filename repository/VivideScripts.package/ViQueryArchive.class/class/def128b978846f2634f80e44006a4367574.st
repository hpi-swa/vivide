definitions
def128b978846f2634f80e44006a4367574
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:entries | entries gather: [:entry | entry asFileDirectory entries]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'128b9788-46f2-634f-80e4-4006a4367574').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:entries | entries gather: [:entry | entry asFileDirectory entries]] value: in)]')})