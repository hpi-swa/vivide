definitions
def772cc5f9cfec4f499902686bc54662cf
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'772cc5f9-cfec-4f49-9902-686bc54662cf'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]'); add: (#mapType->#each); add: (#block->[:obj | ([[:f | f asFileDirectory entries select: [:e | e isDirectory]] value: obj] on: Error do: [#()]),
	([[:f | f asFileDirectory entries select: [:e | e isDirectory not]] value: obj] on: Error do: [#()])]); yourself)