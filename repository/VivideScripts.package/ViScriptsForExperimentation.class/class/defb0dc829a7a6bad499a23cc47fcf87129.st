definitions
defb0dc829a7a6bad499a23cc47fcf87129
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'5922931a-cd53-614c-ace9-69fa450f9420'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 7:07:58 pm'); yourself)); add: (#id->#'b0dc829a-7a6b-ad49-9a23-cc47fcf87129'); add: (#block->[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:cls | cls theNonMetaClass methodDict values , cls theMetaClass methodDict values]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)