definitions
def1e5dd04a3e2ecc4c802b58801097c237
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'1e5dd04a-3e2e-cc4c-802b-58801097c237').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')})