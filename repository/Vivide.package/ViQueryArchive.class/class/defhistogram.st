definitions
defhistogram
	<definition>

	^ ((Dictionary new) add: (#inputKind->Bag); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 November 2013 3:30:24 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#histogram); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]'); add: (#mapType->#each); add: (#block->[:bag | bag sortedCounts in: [:histogram |
		histogram collect: [:map |
			{map key. histogram first key. map value}]]]); yourself)