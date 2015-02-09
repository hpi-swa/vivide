definitions
defc7223154d83c2f4a916af0bfd27be3bd
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'1 February 2015 2:29:06 pm'); yourself)); add: (#id->#'c7223154-d83c-2f4a-916a-f0bfd27be3bd'); add: (#block->[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:groups | groups
		sorted: [:g1 :g2 | g1 first asString <= g2 first asString]] value: in)]'); yourself)