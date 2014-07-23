definitions
def9d4a27b48a76bc4d97380a575bc69f07
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'21 May 2014 6:12:20 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'9d4a27b4-8a76-bc4d-9738-0a575bc69f07'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:hit | #text -> ((((hit at: #info) at: #authors)
	ifNil: [#()]
	ifNotNil: [:authors | authors at: #author]) inject: '''' into: [:all :author |
		all, (author convertFromEncoding: ''utf-8''), '', ''])]'); add: (#mapType->#each); add: (#block->[:hit | #text -> ((((hit at: #info) at: #authors)
	ifNil: [#()]
	ifNotNil: [:authors | authors at: #author]) inject: '' into: [:all :author |
		all, (author convertFromEncoding: 'utf-8'), ', '])]); yourself)