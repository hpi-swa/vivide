definitions
def60d51cf039142045ae54eea3e1bab488
	<definition>

	^ ((Dictionary new) add: (#inputKind->ProtoObject); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'60d51cf0-3914-2045-ae54-eea3e1bab488'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result]'); add: (#mapType->#all); add: (#block->[|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result]); yourself)