definitions
def18829793c08fe54ea54d56060970c1ac
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'18829793-c08f-e54e-a54d-56060970c1ac').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '31 January 2014 6:41:42 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:ctxt | ctxt method]]
		value: in) do: [:result | out addAll: result asList]]')})