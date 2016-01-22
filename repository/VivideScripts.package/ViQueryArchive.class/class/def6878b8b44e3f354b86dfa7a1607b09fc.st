definitions
def6878b8b44e3f354b86dfa7a1607b09fc
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification source ~= op obsoletion source ifTrue: [UiFugueIcons scriptTextIcon] ifFalse: []).
	#balloonText -> 'Source code changed'}]]).
(#class -> ViQueryMapDefinition).
(#id -> #'6878b8b4-4e3f-354b-86df-a7a1607b09fc').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:op | op isModification & op definition isMethodDefinition ifFalse: [#()] ifTrue: [{
	#icon -> (op modification source ~= op obsoletion source ifTrue: [UiFugueIcons scriptTextIcon] ifFalse: []).
	#balloonText -> ''Source code changed''}]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})