definitions
def70408b614313c04793758bceac479cca
	<definition>

	^ ((Dictionary new) add: (#inputKind->Class); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'70408b61-4313-c047-9375-8bceac479cca'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]]'); add: (#mapType->#all); add: (#block->[:classes | classes gather: [:cls |
	(SystemNavigation allCallsOn: #changed: localTo: cls) gather: [:ref |
		ViFlagComment newListFromReference: ref message: #changed:]]]); yourself)