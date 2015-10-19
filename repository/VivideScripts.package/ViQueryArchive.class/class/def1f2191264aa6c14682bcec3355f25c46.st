definitions
def1f2191264aa6c14682bcec3355f25c46
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 October 2015 11:47:09 am'); yourself)); add: (#id->#'1f219126-4aa6-c146-82bc-ec3355f25c46'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> 'File in / Do it'.
	#clicked -> [ [changeRecord fileIn] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { 
	#text -> ''File in / Do it''.
	#clicked -> [ [changeRecord fileIn] ] } ]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)