definitions
def8024196d45df974294a095ae43c36e0c
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 2:29:06 pm'); yourself)); add: (#id->#'8024196d-45df-9742-94a0-95ae43c36e0c'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> script baseClassName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> script baseClassName] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)