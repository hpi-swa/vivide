definitions
def064de4ea4a9ad549942b960508fd4d6c
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [ViToolSet printRelativeTimeStamp: def fullTimeStamp]
		ifFalse: ['-']]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'064de4ea-4a9a-d549-942b-960508fd4d6c').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:op | { #text -> (op definition in: [:def | def isMethodDefinition
		ifTrue: [ViToolSet printRelativeTimeStamp: def fullTimeStamp]
		ifFalse: [''-'']]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})