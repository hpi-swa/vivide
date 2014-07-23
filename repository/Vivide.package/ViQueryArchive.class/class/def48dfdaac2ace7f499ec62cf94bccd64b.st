definitions
def48dfdaac2ace7f499ec62cf94bccd64b
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'48dfdaac-2ace-7f49-9ec6-2cf94bccd64b'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | #text -> ((obj isKindOf: MethodReference)
	ifTrue: [ViObjectOriginService doObject: obj]
	ifFalse: [''''])]'); add: (#mapType->#each); add: (#block->[:obj | #text -> ((obj isKindOf: MethodReference)
	ifTrue: [ViObjectOriginService doObject: obj]
	ifFalse: [''])]); yourself)