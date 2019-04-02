definitions
def6d70e1a8c3b45645b6708094af824d8f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:assoc | { assoc key in: [:timestamp |
	timestamp date = Date today
		ifTrue: [timestamp time print24]
		ifFalse: [(timestamp date printFormat: #(1 2 3 $- 1 1 2)), ', ', timestamp time print24]] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'6d70e1a8-c3b4-5645-b670-8094af824d8f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 6:08:11 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:assoc | { assoc key in: [:timestamp |
	timestamp date = Date today
		ifTrue: [timestamp time print24]
		ifFalse: [(timestamp date printFormat: #(1 2 3 $- 1 1 2)), '', '', timestamp time print24]] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})