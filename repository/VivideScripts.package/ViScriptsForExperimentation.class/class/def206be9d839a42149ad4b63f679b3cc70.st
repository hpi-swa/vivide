definitions
def206be9d839a42149ad4b63f679b3cc70
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 February 2015 11:09:19 am'); yourself)); add: (#id->#'206be9d8-39a4-2149-ad4b-63f679b3cc70'); add: (#block->[:in :out | out addAll: ([:tuples | tuples sorted: [:t1 :t2 | t1 second selector <= t2 second selector]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:tuples | tuples sorted: [:t1 :t2 | t1 second selector <= t2 second selector]] value: in)]'); yourself)