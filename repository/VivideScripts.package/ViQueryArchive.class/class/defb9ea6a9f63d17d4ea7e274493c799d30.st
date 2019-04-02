definitions
defb9ea6a9f63d17d4ea7e274493c799d30
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'b9ea6a9f-63d1-7d4e-a7e2-74493c799d30').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:48:45 pm')})).
(#sourceCode -> '[:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]')})