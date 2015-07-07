definitions
def9f715ab1b7b6be4da6e2c00f2d37c7ef
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'9f715ab1-b7b6-be4d-a6e2-c00f2d37c7ef'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj |
	{#text -> (ViLabelService doObject: obj third).
	#color -> ((obj third isBehavior and: [obj third inheritsFrom: Collection])
		ifTrue: [Color yellow]
		ifFalse: ["transparent"])}]'); add: (#mapType->#each); add: (#block->[:obj |
	{#text -> (ViLabelService doObject: obj third).
	#color -> ((obj third isBehavior and: [obj third inheritsFrom: Collection])
		ifTrue: [Color yellow]
		ifFalse: ["transparent"])}]); yourself)