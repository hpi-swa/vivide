definitions
def947b57117f96b84eb377552af88bcea8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [ViProfile active ifNotNil: #transcriptHistory] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'947b5711-7f96-b84e-b377-552af88bcea8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 August 2016 4:50:38 pm')})).
(#sourceCode -> '[:in :out | [ViProfile active ifNotNil: #transcriptHistory] value in: [:result |
	out addAll: result asList]]')})