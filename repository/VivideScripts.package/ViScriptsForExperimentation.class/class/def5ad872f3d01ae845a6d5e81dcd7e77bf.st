definitions
def5ad872f3d01ae845a6d5e81dcd7e77bf
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'3 February 2015 4:10:25 pm'); yourself)); add: (#id->#'5ad872f3-d01a-e845-a6d5-e81dcd7e77bf'); add: (#block->[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | | view |
	view := thisView. 
	{
	#text -> 'Proceed'.
	#icon -> UiFugueIcons controlIcon.
	#clicked -> [ [ debugger proceed: (view firstOwnerSuchThat: [:m | m isSystemWindow]) ] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:t | (
	[:debugger :context | | view |
	view := thisView. 
	{
	#text -> ''Proceed''.
	#icon -> UiFugueIcons controlIcon.
	#clicked -> [ [ debugger proceed: (view firstOwnerSuchThat: [:m | m isSystemWindow]) ] ]}]
		valueWithArguments: t), { #object -> t first. #objects -> t }]]
			value: in) do: [:result | out add: result]]'); yourself)