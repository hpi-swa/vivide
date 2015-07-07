definitions
defc638cccb0c1e2f459c0cff22d69ec199
	<definition>

	^ ((Dictionary new) add: (#inputKind->PackageInfo); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'c638cccb-0c1e-2f45-9c0c-ff22d69ec199'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (obj workingCopy modified
		ifTrue: [obj packageName asText allBold]
		ifFalse: [obj packageName]).
	#icon -> (ViIconService doObject: obj)}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (obj workingCopy modified
		ifTrue: [obj packageName asText allBold]
		ifFalse: [obj packageName]).
	#icon -> (ViIconService doObject: obj)}]); yourself)