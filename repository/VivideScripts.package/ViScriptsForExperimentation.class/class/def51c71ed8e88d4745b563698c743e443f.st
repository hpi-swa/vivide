definitions
def51c71ed8e88d4745b563698c743e443f
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'6f0a6cae-e0fb-674c-addf-4808feed9a7d'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'4 February 2015 10:53:21 am'); yourself)); add: (#id->#'51c71ed8-e88d-4745-b563-698c743e443f'); add: (#block->[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:symbol | SystemNavigation default allImplementorsOf: symbol]]
		value: in) do: [:result |
			(ViQueryInterpreter isCollection: result)
				ifTrue: [out addAll: result]
				ifFalse: [out add: result]]]'); yourself)