definitions
defed1a253aff93ff46839e0b9fe0538bc0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:viQueryStep | 
	| current refs |
	current := nil. 
	refs := viQueryStep references.
	
	[refs isEmpty] whileFalse: [
		current := refs first.
		refs := current references.
	].
	current
	 ]]
		value: in) do: [:result | out addAll: result asList]]).
(#class -> ViQueryStepDefinition).
(#id -> #'ed1a253a-ff93-ff46-839e-0b9fe0538bc0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '29 April 2016 6:04:11 pm')})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:viQueryStep | 
	| current refs |
	current := nil. 
	refs := viQueryStep references.
	
	[refs isEmpty] whileFalse: [
		current := refs first.
		refs := current references.
	].
	current
	 ]]
		value: in) do: [:result | out addAll: result asList]]')})