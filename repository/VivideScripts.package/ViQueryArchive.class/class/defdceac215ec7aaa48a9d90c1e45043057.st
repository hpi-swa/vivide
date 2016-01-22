definitions
defdceac215ec7aaa48a9d90c1e45043057
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | cls subclasses select: [:c | c category = cls category]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'dceac215-ec7a-aa48-a9d9-0c1e45043057').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 December 2015 11:52:58 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | cls subclasses select: [:c | c category = cls category]]]
		value: in) do: [:result | out addAll: result asList]]')})