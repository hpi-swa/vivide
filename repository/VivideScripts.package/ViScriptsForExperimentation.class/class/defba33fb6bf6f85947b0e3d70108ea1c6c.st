definitions
defba33fb6bf6f85947b0e3d70108ea1c6c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 5:51:10 pm'); yourself)); add: (#id->#'ba33fb6b-f6f8-5947-b0e3-d70108ea1c6c'); add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> 'Over'.
	#icon -> UiFugueIcons arrowStepOverIcon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			doStep] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> ''Over''.
	#icon -> UiFugueIcons arrowStepOverIcon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			doStep] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'); yourself)