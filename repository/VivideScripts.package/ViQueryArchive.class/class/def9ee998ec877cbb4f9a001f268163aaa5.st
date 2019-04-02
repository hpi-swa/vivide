definitions
def9ee998ec877cbb4f9a001f268163aaa5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [TestCase withAllSubclasses] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'9ee998ec-877c-bb4f-9a00-1f268163aaa5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 12:43:11 pm')})).
(#sourceCode -> '[:in :out | [TestCase withAllSubclasses] value in: [:result |
	out addAll: result asList]]')})