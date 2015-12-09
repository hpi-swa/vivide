definitions
def7356b4746dcaab40a55d79bc5aaba65e
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'9 December 2015 1:12:24 pm'); yourself)); add: (#id->#'7356b474-6dca-ab40-a55d-79bc5aaba65e'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:cls | { #text
		-> (ViLabelService doObject: cls).
	#icon
		-> (ViIconService doObject: cls) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:cls | { #text
		-> (ViLabelService doObject: cls).
	#icon
		-> (ViIconService doObject: cls) }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)