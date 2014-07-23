definitions
def2415ac87fed65649afa688ac79e1aa8d
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'28 August 2013 2:37:39 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'2415ac87-fed6-5649-afa6-88ac79e1aa8d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification timeStamp ~= op obsoletion timeStamp
		ifTrue: [UiFugueIcons clockSmallIcon] ifFalse: []).
	#balloonText -> ''Time stamp changed''}]]'); add: (#mapType->#each); add: (#block->[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification timeStamp ~= op obsoletion timeStamp
		ifTrue: [UiFugueIcons clockSmallIcon] ifFalse: []).
	#balloonText -> 'Time stamp changed'}]]); yourself)