definitions
def36b97ef1eff0cc47bdb75231dcaf0940
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:hub | hub projects collect: [:nm | hub project: nm] thenSelect: [:p | p ~~ #notFound]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'36b97ef1-eff0-cc47-bdb7-5231dcaf0940').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 September 2013 4:54:28 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:hub | hub projects collect: [:nm | hub project: nm] thenSelect: [:p | p ~~ #notFound]]]
		value: in) do: [:result | out addAll: result asList]]')})