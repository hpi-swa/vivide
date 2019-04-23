definitions
defb223ce01c9dcc043a935af79dde0b9a3
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | { #text -> (method getSource asString lines first in: [:label |
	| node text |
	node := RBParser parseMethod: label.
	text := label asText.
	
	node arguments do: [:arg |
		text
			addAttribute: (TextColor color: (Color fromString: '#555794'))
			from: arg token start
			to: arg token stop].
		
	text]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'b223ce01-c9dc-c043-a935-af79dde0b9a3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 July 2014 9:38:55 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | { #text -> (method getSource asString lines first in: [:label |
	| node text |
	node := RBParser parseMethod: label.
	text := label asText.
	
	node arguments do: [:arg |
		text
			addAttribute: (TextColor color: (Color fromString: ''#555794''))
			from: arg token start
			to: arg token stop].
		
	text]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})