definitions
def67e6843f98b0044f890362eacc3a5308
	<definition>

	^ ((Dictionary new) add: (#inputKind->ViQueryStep); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'5 May 2014 2:25:40 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'67e6843f-98b0-044f-8903-62eacc3a5308'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:query | {
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