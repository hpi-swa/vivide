*VivideDynamicAnalysis-definitions
def6339f56a501a5644a53c031d49712bc7
	<definition>

	^ ((Dictionary new) add: (#inputKind->SdCallgraph); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 January 2014 10:49:28 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Association); add: (#id->#'6339f56a-501a-5644-a53c-031d49712bc7'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:tree | | map |
	map := Dictionary new.
	tree do: [:node |
		node children do: [:child |
		(map at: node receiverClass ifAbsentPut: [Set new])
			add: child receiverClass]].
	map associations]'); add: (#mapType->#each); add: (#block->[:tree | | map |
	map := Dictionary new.
	tree do: [:node |
		node children do: [:child |
		(map at: node receiverClass ifAbsentPut: [Set new])
			add: child receiverClass]].
	map associations]); yourself)