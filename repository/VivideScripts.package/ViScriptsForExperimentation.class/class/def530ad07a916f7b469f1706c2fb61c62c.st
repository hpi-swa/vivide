definitions
def530ad07a916f7b469f1706c2fb61c62c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 4:19:07 pm'); yourself)); add: (#id->#'530ad07a-916f-7b46-9f17-06c2fb61c62c'); add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> 'Restart'.
	#icon -> UiFugueIcons arrowCircle045LeftIcon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			restart] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> ''Restart''.
	#icon -> UiFugueIcons arrowCircle045LeftIcon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			restart] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]'); yourself)