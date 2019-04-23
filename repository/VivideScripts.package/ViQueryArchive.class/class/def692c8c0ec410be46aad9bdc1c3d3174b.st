definitions
def692c8c0ec410be46aad9bdc1c3d3174b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'692c8c0e-c410-be46-aad9-bdc1c3d3174b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:29 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelFiltered to: value]
		ifFalse: [line key hasCategory: #dataModelFiltered]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})