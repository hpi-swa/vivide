definitions
defe949ac9ac053b24f929e75da7266b9df
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:refs | refs gather: [:ref | ViMethodVersion versionsOfMethod: ref]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'e949ac9a-c053-b24f-929e-75da7266b9df').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:refs | refs gather: [:ref | ViMethodVersion versionsOfMethod: ref]] value: in)]')})