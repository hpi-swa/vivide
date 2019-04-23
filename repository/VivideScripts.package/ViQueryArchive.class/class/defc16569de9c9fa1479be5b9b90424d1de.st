definitions
defc16569de9c9fa1479be5b9b90424d1de
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'c16569de-9c9f-a147-9be5-b9b90424d1de').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls |
	cls theNonMetaClass methodDict values,
	cls theMetaClass methodDict values]]
		value: in) do: [:result | out addAll: result asList]]')})