definitions
def3af630fa2840094aa64acd8d723edc3a
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 February 2015 5:19:08 pm'); yourself)); add: (#id->#'3af630fa-2840-094a-a64a-cd8d723edc3a'); add: (#block->[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> (script valueOfProperty: #priority ifAbsent: ['-'])  ] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]); add: (#sourceCode->'[:in :out | ([:all | all collect: [:o |
	([:obj | {
		[:script | #text -> (script valueOfProperty: #priority ifAbsent: [''-''])  ] value: obj }]
			value: o), { #object -> o }]]
				value: in) do: [:result | out add: result]]'); yourself)