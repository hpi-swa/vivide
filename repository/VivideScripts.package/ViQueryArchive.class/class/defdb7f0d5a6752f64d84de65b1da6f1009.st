definitions
defdb7f0d5a6752f64d84de65b1da6f1009
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'db7f0d5a-6752-f64d-84de-65b1da6f1009').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2014 11:06:30 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:line | {
	#color -> (Color white alpha: 0.5).
	#checkable -> true.
	#checked -> [:value :set | set
		ifTrue: [line key toggleCategory: #declaration to: value]
		ifFalse: [line key hasCategory: #declaration]]}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})