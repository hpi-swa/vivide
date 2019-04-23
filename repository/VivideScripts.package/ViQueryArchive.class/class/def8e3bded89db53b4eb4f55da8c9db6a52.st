definitions
def8e3bded89db53b4eb4f55da8c9db6a52
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step definition ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'8e3bded8-9db5-3b4e-b4f5-5da8c9db6a52').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '23 July 2014 1:16:41 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | { #text -> (step definition ifNotNil: [:def | ViTextStyler new styledTextFor: def sourceCode asText]) }] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})