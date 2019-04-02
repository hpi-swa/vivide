definitions
def5763657d87452f4e88a33b0caa9bde41
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> ('<font color="#AAAAAA">', (step definition
	ifNil: ['ref']
	ifNotNil: [:def | def references size asString]), '</font>') asHtmlText } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'5763657d-8745-2f4e-88a3-3b0caa9bde41').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:24:01 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (''<font color="#AAAAAA">'', (step definition
	ifNil: [''ref'']
	ifNotNil: [:def | def references size asString]), ''</font>'') asHtmlText } ] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})