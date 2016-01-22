definitions
def11a05738cd994b4c8219090dd6bf4a19
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | RBParser parseMethod: method getSource asString]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'11a05738-cd99-4b4c-8219-090dd6bf4a19').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | RBParser parseMethod: method getSource asString]]
		value: in) do: [:result | out addAll: result asList]]')})