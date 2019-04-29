definitions
def89dbfbbfb8818a449e798c2582f4f0e8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
	#icon -> (step class == ViScriptPart ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClass name asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'89dbfbbf-b881-8a44-9e79-8c2582f4f0e8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '3 September 2013 3:29:42 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:step | {
	#icon -> (step class == ViScriptPart ifTrue: [] ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> (step baseClass name asText
	addAttribute: (TextColor color: (Color fromString: #AAAAAA));
	yourself)}
	] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})