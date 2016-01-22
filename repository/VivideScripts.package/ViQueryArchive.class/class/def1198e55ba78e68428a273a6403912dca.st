definitions
def1198e55ba78e68428a273a6403912dca
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | 
	((Smalltalk at: #MethodTags ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [Set new]) -> method]).
(#class -> ViQueryMapDefinition).
(#id -> #'1198e55b-a78e-6842-8a27-3a6403912dca').
(#inputKind -> CompiledMethod).
(#mapType -> #each).
(#outputKind -> Association).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '20 February 2014 3:41:39 pm')})).
(#sourceCode -> '[:method | 
	((Smalltalk at: #MethodTags ifAbsentPut: [Dictionary new])
		at: method methodReference ifAbsentPut: [Set new]) -> method]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})