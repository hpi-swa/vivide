definitions
def0c3cb364b408444ebe676c71c2bdee55
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'0c3cb364-b408-444e-be67-6c71c2bdee55').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2013 4:48:45 pm')})).
(#sourceCode -> '[:in :out | [(((Processor instVarNamed: #quiescentProcessLists)
	gather: [:ll | ll asOrderedCollection])
	copyWith: Processor activeProcess)] value in: [:result |
	out addAll: result asList]]')})