definitions
def8f43765376f47543b2e3bce0f89efa11
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 October 2015 2:08:34 pm'); yourself)); add: (#id->#'8f437653-76f4-7543-b2e3-bce0f89efa11'); add: (#block->[:in :out | out addAll: ([:changeRecords | changeRecords select: [:changeRecord |
		changeRecord type = #method and: [changeRecord methodClass theNonMetaClass inheritsFrom: ViScriptArchive]]] value: in)]); add: (#sourceCode->'[:in :out | out addAll: ([:changeRecords | changeRecords select: [:changeRecord |
		changeRecord type = #method and: [changeRecord methodClass theNonMetaClass inheritsFrom: ViScriptArchive]]] value: in)]'); yourself)