definitions
defb6ce0874004f42458c30280b2bec1485
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]). #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'b6ce0874-004f-4245-8c30-280b2bec1485').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]). #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText])}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})