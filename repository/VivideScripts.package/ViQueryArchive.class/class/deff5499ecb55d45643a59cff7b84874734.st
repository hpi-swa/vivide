definitions
deff5499ecb55d45643a59cff7b84874734
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'f5499ecb-55d4-5643-a59c-ff7b84874734').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:08:14 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataModelRaw to: value]
		ifFalse: [line key hasCategory: #dataModelRaw]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})