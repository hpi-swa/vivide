definitions
defaf8de8c614ff2c4c92c584e06357a0c9
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step category ifNotNil: [:lbl | ('<font color="#008800">', lbl, '</font>') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'af8de8c6-14ff-2c4c-92c5-84e06357a0c9').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:19:25 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step category ifNotNil: [:lbl | (''<font color="#008800">'', lbl, ''</font>'') asHtmlText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})