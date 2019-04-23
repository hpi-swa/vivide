definitions
defc199aae473d9574690164e66df9f6434
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | {method methodClass theNonMetaClass. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'c199aae4-73d9-5746-9016-4e66df9f6434').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:55:27 am')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | {method methodClass theNonMetaClass. method} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')})