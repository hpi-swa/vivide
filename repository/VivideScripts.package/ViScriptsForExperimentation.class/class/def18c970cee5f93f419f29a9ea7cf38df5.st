definitions
def18c970cee5f93f419f29a9ea7cf38df5
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 5:50:30 pm'); yourself)); add: (#id->#'18c970ce-e5f9-3f41-9f29-a9ea7cf38df5'); add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> 'Into'.
	#icon -> UiFugueIcons arrowStepIcon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			send] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | {
	#text -> ''Into''.
	#icon -> UiFugueIcons arrowStepIcon.
	#clicked -> [
		[debugger 
			toggleContextStackIndex: (debugger contextStackList indexOf: context printString);
			send] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]'); yourself)