definitions
def9d09ac24315cac4caf8bca5eb7b05f23
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 October 2015 11:03:50 am'); yourself)); add: (#id->#'9d09ac24-315c-ac4c-af8b-ca5eb7b05f23'); add: (#block->[:in :out | (
	[:objects | objects collect: [:class | ViProtocol protocolsForClass: class]]
		value: in) do: [:result | out addAll: result asList]]); add: (#sourceCode->'[:in :out | (
	[:objects | objects collect: [:class | ViProtocol protocolsForClass: class]]
		value: in) do: [:result | out addAll: result asList]]'); yourself)