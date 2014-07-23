*VivideDynamicAnalysis-definitions
def006246aaae7d744a9b29fc1e299697e9
	<definition>

	^ ((Dictionary new) add: (#inputKind->SdCallgraph); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'8 January 2014 8:48:39 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Bag); add: (#id->#'006246aa-ae7d-744a-9b29-fc1e299697e9'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:tree |
	Bag new in: [:bag | 
		tree do: [:node | bag add: node receiverClass].
		bag]]'); add: (#mapType->#each); add: (#block->[:tree |
	Bag new in: [:bag | 
		tree do: [:node | bag add: node receiverClass].
		bag]]); yourself)