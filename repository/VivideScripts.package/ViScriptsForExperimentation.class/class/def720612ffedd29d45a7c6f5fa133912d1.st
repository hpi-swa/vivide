definitions
def720612ffedd29d45a7c6f5fa133912d1
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 2:29:06 pm'); yourself)); add: (#id->#'720612ff-edd2-9d45-a7c6-f5fa133912d1'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text
		-> (ViObjectOriginService doObject: object)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text
		-> (ViObjectOriginService doObject: object)] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)