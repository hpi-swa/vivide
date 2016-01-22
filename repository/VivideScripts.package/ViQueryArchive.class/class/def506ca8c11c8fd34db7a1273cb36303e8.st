definitions
def506ca8c11c8fd34db7a1273cb36303e8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:pane | {
	#icon -> (ViIconService doObject: pane).
	#text -> (ViLabelService doObject: pane).
	#selectedLater -> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'506ca8c1-1c8f-d34d-b7a1-273cb36303e8').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '1 June 2015 1:40:11 pm')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:pane | {
	#icon -> (ViIconService doObject: pane).
	#text -> (ViLabelService doObject: pane).
	#selectedLater -> [[pane addHalo]]}]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})