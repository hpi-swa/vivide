definitions
def09aee6774dd4a6478067b5f15a60f5ff
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'09aee677-4dd4-a647-8067-b5f15a60f5ff'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | ((method selector includesSubstring: #small caseSensitive: false)
	or: [method selector includesSubstring: #bullet caseSensitive: false])
		ifTrue: [''1) Small Icons''] ifFalse: [''2) Regular Icons'']]'); add: (#mapType->#each); add: (#block->[:method | ((method selector includesSubstring: #small caseSensitive: false)
	or: [method selector includesSubstring: #bullet caseSensitive: false])
		ifTrue: ['1) Small Icons'] ifFalse: ['2) Regular Icons']]); yourself)