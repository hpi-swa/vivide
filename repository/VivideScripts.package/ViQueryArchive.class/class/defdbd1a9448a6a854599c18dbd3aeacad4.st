definitions
defdbd1a9448a6a854599c18dbd3aeacad4
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:methodReference | 
	'{1}-{2}-{3}-{4}-{5}' format: {
		methodReference selector copyFrom: 3+1 to: 3+8.
		methodReference selector copyFrom: 3+9 to: 3+12.
		methodReference selector copyFrom: 3+13 to: 3+16.
		methodReference selector copyFrom: 3+17 to: 3+20.
		methodReference selector copyFrom: 3+21 to: 3+32.	
	}
	]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'dbd1a944-8a6a-8545-99c1-8dbd3aeacad4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 April 2019 4:42:23.130086 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:methodReference | 
	''{1}-{2}-{3}-{4}-{5}'' format: {
		methodReference selector copyFrom: 3+1 to: 3+8.
		methodReference selector copyFrom: 3+9 to: 3+12.
		methodReference selector copyFrom: 3+13 to: 3+16.
		methodReference selector copyFrom: 3+17 to: 3+20.
		methodReference selector copyFrom: 3+21 to: 3+32.	
	}
	]]
		value: in) do: [:result | out addAll: result asList]]')})