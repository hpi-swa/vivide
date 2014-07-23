definitions
def9c76ab376e8d7746a7c35b4f72b5552c
	<definition>

	^ ((Dictionary new) add: (#inputKind->PackageInfo); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'9c76ab37-6e8d-7746-a7c3-5b4f72b5552c'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}]'); add: (#mapType->#each); add: (#block->[:obj | {
	#text -> (obj workingCopy ancestry ancestorStringWithout: obj packageName).
	#icon -> ((((obj hasPreamble or: [obj hasPostscript]) or: [obj hasPreambleOfRemoval] )or: [obj hasPostscriptOfRemoval]) ifTrue: [UiFugueIcons blueDocumentSmallIcon] ifFalse: [ViIcons blankIcon])}]); yourself)