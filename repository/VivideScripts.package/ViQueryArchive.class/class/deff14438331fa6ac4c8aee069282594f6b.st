definitions
deff14438331fa6ac4c8aee069282594f6b
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'15 December 2015 10:39:29 am'); yourself)); add: (#id->#'f1443833-1fa6-ac4c-8aee-069282594f6b'); add: (#block->[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph vResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o | (
	[:morph | { #text -> morph vResizing }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]'); yourself)