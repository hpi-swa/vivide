definitions
def61043924ba731a45baefc0880fa82227
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
		ifTrue: [ { #text -> textOrObject } ]
		ifFalse: [ [:step | { #text -> (step steps collect: [:s | s definition category ifNil: #default] thenSelect: [:cat | cat notNil]) asSet asArray asString }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'61043924-ba73-1a45-baef-c0880fa82227').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 11:18:20 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText
		ifTrue: [ { #text -> textOrObject } ]
		ifFalse: [ [:step | { #text -> (step steps collect: [:s | s definition category ifNil: #default] thenSelect: [:cat | cat notNil]) asSet asArray asString }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})