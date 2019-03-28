definitions
defc98c52d61ac0a14480e0626f7226030a
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:byteSymbol :byteString :viPaneClass | {byteSymbol. byteString. viPaneClass} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'c98c52d6-1ac0-a144-80e0-626f7226030a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:15:06 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:byteSymbol :byteString :viPaneClass | {byteSymbol. byteString. viPaneClass} asTuples] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')})