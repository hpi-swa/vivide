definitions
def83fdd12ec8ffd04caca78a67eac8a477
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'30 December 2014 5:04:25 pm'); yourself)); add: (#id->#'83fdd12e-c8ff-d04c-aca7-8a67eac8a477'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text -> object printString] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:object | #text -> object printString] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)