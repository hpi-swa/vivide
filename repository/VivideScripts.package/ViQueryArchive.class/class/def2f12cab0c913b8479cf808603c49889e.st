definitions
def2f12cab0c913b8479cf808603c49889e
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:protocol | {protocol containingPackage. protocol} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'2f12cab0-c913-b847-9cf8-08603c49889e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 October 2015 11:08:14 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:protocol | {protocol containingPackage. protocol} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})