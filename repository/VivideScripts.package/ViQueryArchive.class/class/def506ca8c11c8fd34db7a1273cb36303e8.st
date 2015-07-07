definitions
def506ca8c11c8fd34db7a1273cb36303e8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 June 2015 1:40:11 pm'); yourself)); add: (#id->#'506ca8c1-1c8f-d34d-b7a1-273cb36303e8'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:pane | {
	#icon -> (ViIconService doObject: pane).
	#text -> (ViLabelService doObject: pane).
	#selectedLater -> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:pane | {
	#icon -> (ViIconService doObject: pane).
	#text -> (ViLabelService doObject: pane).
	#selectedLater -> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)