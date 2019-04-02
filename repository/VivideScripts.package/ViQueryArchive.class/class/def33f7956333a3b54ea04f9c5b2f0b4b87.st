definitions
def33f7956333a3b54ea04f9c5b2f0b4b87
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'33f79563-33a3-b54e-a04f-9c5b2f0b4b87').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 August 2014 1:19:01 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:class | {
	#balloonText -> class name.
	#icon -> (Morph new
		color: ((class inheritsFrom: TestCase)
			ifTrue: [Color green muchDarker]
			ifFalse: [Color blue paler]);
		extent: 
			((class instVarNames size * 2) max: 1) @
			((class methodDict values size * 1) max: 1)) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})