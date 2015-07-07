definitions
def6878b8b44e3f354b86dfa7a1607b09fc
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'6878b8b4-4e3f-354b-86df-a7a1607b09fc'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification source ~= op obsoletion source ifTrue: [UiFugueIcons scriptTextIcon] ifFalse: []).
	#balloonText -> ''Source code changed''}]]'); add: (#mapType->#each); add: (#block->[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification source ~= op obsoletion source ifTrue: [UiFugueIcons scriptTextIcon] ifFalse: []).
	#balloonText -> 'Source code changed'}]]); yourself)