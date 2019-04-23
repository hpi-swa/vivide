definitions
def8fe06b9cb33eca4987f21544b5e591f1
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:association |  SystemNavigation default allAccessesTo: association value from: association  key]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'8fe06b9c-b33e-ca49-87f2-1544b5e591f1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 May 2018 9:23:46 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:association |  SystemNavigation default allAccessesTo: association value from: association  key]]
		value: in) do: [:result | out addAll: result asList]]')})