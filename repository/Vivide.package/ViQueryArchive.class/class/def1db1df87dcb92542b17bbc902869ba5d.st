definitions
def1db1df87dcb92542b17bbc902869ba5d
	<definition>

	^ ((Dictionary new) add: (#inputKind->SystemNavigation); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 November 2013 5:12:19 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'1db1df87-dcb9-2542-b17b-bc902869ba5d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]'); add: (#mapType->#each); add: (#block->[:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]); yourself)