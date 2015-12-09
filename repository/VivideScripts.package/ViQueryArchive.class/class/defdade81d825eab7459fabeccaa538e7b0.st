definitions
defdade81d825eab7459fabeccaa538e7b0
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'7 December 2015 2:00:40 pm'); yourself)); add: (#id->#'dade81d8-25ea-b745-9fab-eccaa538e7b0'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:script | {
	"Provide hint about old-style scripts."
	#icon -> (script class == ViScriptPart ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> script baseClassName}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:script | {
	"Provide hint about old-style scripts."
	#icon -> (script class == ViScriptPart ifFalse: [UiFugueIcons exclamationSmallIcon]).
	#text -> script baseClassName}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)