definitions
def486c3b105657884fa27698767744de63
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:obj | (PointerExplorerWrapper with: obj) contents]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'486c3b10-5657-884f-a276-98767744de63').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '8 November 2013 3:52:47 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:obj | (PointerExplorerWrapper with: obj) contents]]
		value: in) do: [:result | out addAll: result asList]]')})