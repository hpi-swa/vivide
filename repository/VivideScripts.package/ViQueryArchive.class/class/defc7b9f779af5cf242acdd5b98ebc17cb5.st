definitions
defc7b9f779af5cf242acdd5b98ebc17cb5
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification category ~= op obsoletion category ifTrue: [UiFugueIcons priceTagIcon] ifFalse: []).
	#balloonText -> 'Recategorized'}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'c7b9f779-af5c-f242-acdd-5b98ebc17cb5').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification category ~= op obsoletion category ifTrue: [UiFugueIcons priceTagIcon] ifFalse: []).
	#balloonText -> ''Recategorized''}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})