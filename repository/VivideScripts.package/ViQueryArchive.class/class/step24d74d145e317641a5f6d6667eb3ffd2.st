steps
step24d74d145e317641a5f6d6667eb3ffd2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
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
(#className -> #ViScriptDefinition).
(#id -> #'b223ce01-c9dc-c043-a935-af79dde0b9a3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '21 July 2014 9:38:55 am')
})).
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
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b223ce01-c9dc-c043-a935-af79dde0b9a3').
(#iconCode -> 'nil').
(#id -> #'24d74d14-5e31-7641-a5f6-d6667eb3ffd2').
(#isProperty -> true).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#priority -> 6560)
}))
})