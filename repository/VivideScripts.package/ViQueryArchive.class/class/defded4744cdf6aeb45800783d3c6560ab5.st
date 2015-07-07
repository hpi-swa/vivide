definitions
defded4744cdf6aeb45800783d3c6560ab5
	<definition>

	^ ((Dictionary new) add: (#inputKind->Association); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'ded4744c-df6a-eb45-8007-83d3c6560ab5'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:objs | objs gather: [:assoc |
	(assoc value versionNamesForPackageNamed: (
		assoc key isString
			ifTrue: [assoc key]
			ifFalse: [assoc key packageName]))
	collect: [:vn | assoc value versionNamed: vn]]]'); add: (#mapType->#all); add: (#block->[:objs | objs gather: [:assoc |
	(assoc value versionNamesForPackageNamed: (
		assoc key isString
			ifTrue: [assoc key]
			ifFalse: [assoc key packageName]))
	collect: [:vn | assoc value versionNamed: vn]]]); yourself)