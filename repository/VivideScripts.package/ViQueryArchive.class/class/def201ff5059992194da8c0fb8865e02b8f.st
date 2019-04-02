definitions
def201ff5059992194da8c0fb8865e02b8f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
	#icon -> (step class == ViScriptPart ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClassName asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'201ff505-9992-194d-a8c0-fb8865e02b8f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:29:42 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
	#icon -> (step class == ViScriptPart ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClassName asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})