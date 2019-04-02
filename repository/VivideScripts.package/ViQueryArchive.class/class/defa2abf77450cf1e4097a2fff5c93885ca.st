definitions
defa2abf77450cf1e4097a2fff5c93885ca
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [ChangeSet allChangeSets] value in: [:result |
	out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'a2abf774-50cf-1e40-97a2-fff5c93885ca').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '5 June 2014 4:48:11 pm')})).
(#sourceCode -> '[:in :out | [ChangeSet allChangeSets] value in: [:result |
	out addAll: result asList]]')})