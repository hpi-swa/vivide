definitions
def83d4d05053eb7a4f98114279830dfeeb
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail message bodyTextFormatted }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#class -> ViQueryStepDefinition).
(#id -> #'83d4d050-53eb-7a4f-9811-4279830dfeeb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '14 February 2018 9:23:43 am')})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:mail | { #text -> mail message bodyTextFormatted }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')})