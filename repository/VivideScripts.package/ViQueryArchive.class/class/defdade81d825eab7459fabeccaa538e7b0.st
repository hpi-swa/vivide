definitions
defdade81d825eab7459fabeccaa538e7b0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | {
	"Provide hint about old-style scripts."
	#icon -> (script class == ViScriptPart ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> script baseClassName}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViScriptDefinition).
(#id -> #'dade81d8-25ea-b745-9fab-eccaa538e7b0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | {
	"Provide hint about old-style scripts."
	#icon -> (script class == ViScriptPart ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> script baseClassName}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})