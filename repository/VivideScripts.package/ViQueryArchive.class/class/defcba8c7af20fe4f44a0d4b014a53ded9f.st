definitions
defcba8c7af20fe4f44a0d4b014a53ded9f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'cba8c7af-20fe-4f44-a0d4-b014a53ded9f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 August 2016 4:50:38 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:history | history objects]]
		value: in) do: [:result | out addAll: result asList]]')})