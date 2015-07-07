definitions
defeeac0bd5d8d92f4fac607fd29bee41b8
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 October 2014 3:25:39 pm'); yourself)); add: (#id->#'eeac0bd5-d8d9-2f4f-ac60-7fd29bee41b8'); add: (#block->[:in :out | (
	[:objects | objects collect: [:byteString | byteString asHtmlText]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:byteString | byteString asHtmlText]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)