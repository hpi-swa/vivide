definitions
def3fb6e3c1c7c07e4da1411d803aacf6f5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:tag | { #modelRead in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'3fb6e3c1-c7c0-7e4d-a141-1d803aacf6f5').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 3:45:20 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:tag | { #modelRead in: [:flag | {
	#checkable -> true. 
	#checked -> [:value :set | set
		ifTrue: [value
				ifTrue: [tag key add: flag]
				ifFalse: [tag key remove: flag]]
		ifFalse: [tag key includes: flag]]}] }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})