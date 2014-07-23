definitions
defc7b9f779af5cf242acdd5b98ebc17cb5
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'c7b9f779-af5c-f242-acdd-5b98ebc17cb5'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification category ~= op obsoletion category ifTrue: [UiFugueIcons priceTagIcon] ifFalse: []).
	#balloonText -> ''Recategorized''}]]'); add: (#mapType->#each); add: (#block->[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification category ~= op obsoletion category ifTrue: [UiFugueIcons priceTagIcon] ifFalse: []).
	#balloonText -> 'Recategorized'}]]); yourself)