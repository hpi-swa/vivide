definitions
deff91bbebd046eb2489d3a2d57d8f07c27
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ref | ViFlagComment newListFromReference: ref]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'f91bbebd-046e-b248-9d3a-2d57d8f07c27').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:34:06 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ref | ViFlagComment newListFromReference: ref]]
		value: in) do: [:result | out addAll: result asList]]')})