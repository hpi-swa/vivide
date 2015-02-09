definitions
def0670d56bcbc7ca4980e54c9a6f2686f5
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 5:51:34 pm'); yourself)); add: (#id->#'0670d56b-cbc7-ca49-80e5-4c9a6f2686f5'); add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> 'Through'.
	#icon -> UiFugueIcons arrow315Icon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			stepIntoBlock] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> ''Through''.
	#icon -> UiFugueIcons arrow315Icon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			stepIntoBlock] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'); yourself)