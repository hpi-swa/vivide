definitions
def77f9848509d8e34cbb69a66a7a0d4a45
	<definition>

	^ ((Dictionary new) add: (#inputKind->PackageInfo); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 September 2013 3:38:09 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ViFlagComment); add: (#id->#'77f98485-09d8-e34c-bb69-a66a7a0d4a45'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]'); add: (#mapType->#each); add: (#block->[:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]); yourself)