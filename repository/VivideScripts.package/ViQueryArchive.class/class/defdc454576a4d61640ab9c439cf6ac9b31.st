definitions
defdc454576a4d61640ab9c439cf6ac9b31
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:definition | definition organization codeDefinitions
	select: [:def | def mapType == definition mapType]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'dc454576-a4d6-1640-ab9c-439cf6ac9b31').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '4 September 2013 12:59:07 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:definition | definition organization codeDefinitions
	select: [:def | def mapType == definition mapType]]]
		value: in) do: [:result | out addAll: result asList]]')})