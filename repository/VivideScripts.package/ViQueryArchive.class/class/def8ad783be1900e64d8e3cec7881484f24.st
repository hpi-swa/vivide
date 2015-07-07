definitions
def8ad783be1900e64d8e3cec7881484f24
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'10 December 2014 10:17:08 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'8ad783be-1900-e64d-8e3c-ec7881484f24'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:query | {
	#icon -> (query nextIcon
		ifNil: [ViIcons blankIcon]).
	#text -> (query nextLabel
		ifNil: [
			query isScript ifTrue: [ViTextStyler new styledTextFor: query sourceCodeShort asText] ifFalse: [
			query definition
			ifNotNil: [:def |
				ViTextStyler new styledTextFor: def sourceCode asText]]])}]'); add: (#mapType->#each); add: (#block->[:query | {
	#icon -> (query nextIcon
		ifNil: [ViIcons blankIcon]).
	#text -> (query nextLabel
		ifNil: [
			query isScript ifTrue: [ViTextStyler new styledTextFor: query sourceCodeShort asText] ifFalse: [
			query definition
			ifNotNil: [:def |
				ViTextStyler new styledTextFor: def sourceCode asText]]])}]); yourself)