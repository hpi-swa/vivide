definitions
def134c22bfcbf5674e8ff98aff090f7237
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:refs | refs reject: [:ref | ref selector beginsWith: #test]] value: in)]).
(#class -> ViQueryStepDefinition).
(#id -> #'134c22bf-cbf5-674e-8ff9-8aff090f7237').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:15:27 pm')})).
(#sourceCode -> '[:in :out | out addAll: ([:refs | refs reject: [:ref | ref selector beginsWith: #test]] value: in)]')})