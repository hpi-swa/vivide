definitions
def64a657edd4dfe146955a7dfe7e5570db
	<definition>

	^ ((Dictionary new) add: (#inputKind->SystemNavigation); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 January 2014 4:26:25 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'64a657ed-d4df-e146-955a-7dfe7e5570db'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]'); add: (#mapType->#each); add: (#block->[:navi |
	OrderedCollection new in: [:s| | max |
		max := 0.
		navi allBehaviorsDo: [:b |
			s add: {b instVarNames size. nil. b}.
			max := max max: s last first].
		
		s do: [:each | each at: 2 put: max].
		s]]); yourself)