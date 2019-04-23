definitions
defac6e9f736e721c4e9d3abbea9406b9aa
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cat | (SystemOrganization listAtCategoryNamed: cat)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'ac6e9f73-6e72-1c4e-9d3a-bbea9406b9aa').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:28:44 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cat | (SystemOrganization listAtCategoryNamed: cat)
	collect: [:nm | Smalltalk at: nm]]]
		value: in) do: [:result | out addAll: result asList]]')})