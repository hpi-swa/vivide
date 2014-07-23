definitions
defmergeAssociations
	<definition>

	^ ((Dictionary new) add: (#inputKind->Association); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Dictionary); add: (#id->#mergeAssociations); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:assocs | |d|
	d := Dictionary new.
	assocs do: [:assoc | (d
		at: assoc key ifAbsentPut: [OrderedCollection new])
		add: assoc value].
	{d}]'); add: (#mapType->#all); add: (#block->[:assocs | |d|
	d := Dictionary new.
	assocs do: [:assoc | (d
		at: assoc key ifAbsentPut: [OrderedCollection new])
		add: assoc value].
	{d}]); yourself)