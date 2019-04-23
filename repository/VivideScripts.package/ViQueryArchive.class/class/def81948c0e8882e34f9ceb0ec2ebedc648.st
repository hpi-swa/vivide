definitions
def81948c0e8882e34f9ceb0ec2ebedc648
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | ('<font color="#000088">', lbl, '</font>') asHtmlText]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'81948c0e-8882-e34f-9ceb-0ec2ebedc648').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:18:56 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step definition ifNotNil: [:def | def category ifNotNil: [:lbl | (''<font color="#000088">'', lbl, ''</font>'') asHtmlText]]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})