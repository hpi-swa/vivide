definitions
def2415ac87fed65649afa688ac79e1aa8d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification timeStamp ~= op obsoletion timeStamp
		ifTrue: [UiFugueIcons clockSmallIcon] ifFalse: []).
	#balloonText -> 'Time stamp changed'}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'2415ac87-fed6-5649-afa6-88ac79e1aa8d').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification timeStamp ~= op obsoletion timeStamp
		ifTrue: [UiFugueIcons clockSmallIcon] ifFalse: []).
	#balloonText -> ''Time stamp changed''}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})