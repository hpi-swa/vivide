definitions
deffa4a701a27a2fd47a62cb5c018b350f6
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:node | { #text
		-> ((ViTextStyler new classOrMetaClass: Object;
				 styledTextFor: node source asText) copyFrom: node start to: node stop) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'fa4a701a-27a2-fd47-a62c-b5c018b350f6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 11:26:37 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:node | { #text
		-> ((ViTextStyler new classOrMetaClass: Object;
				 styledTextFor: node source asText) copyFrom: node start to: node stop) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})