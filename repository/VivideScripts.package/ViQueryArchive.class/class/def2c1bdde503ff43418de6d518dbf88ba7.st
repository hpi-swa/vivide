definitions
def2c1bdde503ff43418de6d518dbf88ba7
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [ViProfile active ifNotNil: #transcriptHistory] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'2c1bdde5-03ff-4341-8de6-d518dbf88ba7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 February 2018 6:39:39 pm')})).
(#sourceCode -> '[:in :out | [ViProfile active ifNotNil: #transcriptHistory] value in: [:result |
	out addAll: result asList]]')})