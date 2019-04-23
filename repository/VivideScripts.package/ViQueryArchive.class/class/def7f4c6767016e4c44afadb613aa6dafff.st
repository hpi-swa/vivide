definitions
def7f4c6767016e4c44afadb613aa6dafff
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'7f4c6767-016e-4c44-afad-b613aa6dafff').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 1:09:25 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> ((Color gray: 0.85) alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #dataOther to: value]
		ifFalse: [line key hasCategory: #dataOther]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})