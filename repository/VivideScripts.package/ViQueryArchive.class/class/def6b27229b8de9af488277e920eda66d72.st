definitions
def6b27229b8de9af488277e920eda66d72
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 October 2015 3:43 pm'); yourself)); add: (#id->#'6b27229b-8de9-af48-8277-e920eda66d72'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { #text -> changeRecord stamp }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:changeRecord | { #text -> changeRecord stamp }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)