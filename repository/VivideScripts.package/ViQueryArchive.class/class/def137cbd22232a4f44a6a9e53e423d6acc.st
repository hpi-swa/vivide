definitions
def137cbd22232a4f44a6a9e53e423d6acc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'137cbd22-232a-4f44-a6a9-e53e423d6acc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:36:11 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]]
		value: in) do: [:result | out addAll: result asList]]')})