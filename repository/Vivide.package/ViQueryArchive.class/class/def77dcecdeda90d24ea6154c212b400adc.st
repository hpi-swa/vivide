definitions
def77dcecdeda90d24ea6154c212b400adc
	<definition>

	^ ((Dictionary new) add: (#inputKind->SystemNavigation); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 November 2013 3:36:11 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Bag); add: (#id->#'77dcecde-da90-d24e-a615-4c212b400adc'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]'); add: (#mapType->#each); add: (#block->[:navi |
	Bag new in: [:histogram |
		navi allObjectsDo: [:obj |
			histogram add: obj class].
		histogram]]); yourself)