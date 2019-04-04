definitions
def39199be1b491d345a8cb61ca01ab3043
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 6:40:31 pm'); yourself)); add: (#id->#'39199be1-b491-d345-a8cb-61ca01ab3043'); add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | | view |
	view := thisView. 
	{
	#text -> 'Terminate'.
	#icon -> UiFugueIcons crossIcon.
	#clicked -> [ [
		debugger interruptedProcess terminate.
		(view firstOwnerSuchThat: [:m | m isSystemWindow]) closeBoxHit ] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | | view |
	view := thisView. 
	{
	#text -> ''Terminate''.
	#icon -> UiFugueIcons crossIcon.
	#clicked -> [ [
		debugger interruptedProcess terminate.
		(view firstOwnerSuchThat: [:m | m isSystemWindow]) closeBoxHit ] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]'); yourself)