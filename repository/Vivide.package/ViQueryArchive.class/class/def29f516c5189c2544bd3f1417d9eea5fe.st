definitions
def29f516c5189c2544bd3f1417d9eea5fe
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 February 2014 4:31:24 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'29f516c5-189c-2544-bd3f-1417d9eea5fe'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:binding | 
	"See Browser >> messageList"
	(binding key = ClassOrganizer allCategory
		ifTrue: [binding value organization allMethodSelectors]
		ifFalse: [binding value organization listAtCategoryNamed: binding key])
		collect: [:selector | binding value >> selector]]'); add: (#mapType->#each); add: (#block->[:binding | 
	"See Browser >> messageList"
	(binding key = ClassOrganizer allCategory
		ifTrue: [binding value organization allMethodSelectors]
		ifFalse: [binding value organization listAtCategoryNamed: binding key])
		collect: [:selector | binding value >> selector]]); yourself)