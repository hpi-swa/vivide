definitions
def33ed3fa1213abf45809290ada0211906
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'20 May 2014 12:01:18 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'33ed3fa1-213a-bf45-8092-90ada0211906'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:state | | cls |
	cls := Smalltalk at: (state properties at: #className ifAbsent: []) ifAbsent: [].
	
	{
	#text -> (state properties at: #headerText).
	#icon -> (cls
			ifNotNil: [cls editorIcon]
			ifNil: [ViIconService doObject: (state properties at: #object)])}]'); add: (#mapType->#each); add: (#block->[:state | | cls |
	cls := Smalltalk at: (state properties at: #className ifAbsent: []) ifAbsent: [].
	
	{
	#text -> (state properties at: #headerText).
	#icon -> (cls
			ifNotNil: [cls editorIcon]
			ifNil: [ViIconService doObject: (state properties at: #object)])}]); yourself)