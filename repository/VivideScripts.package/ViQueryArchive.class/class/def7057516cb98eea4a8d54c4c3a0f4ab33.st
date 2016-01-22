definitions
def7057516cb98eea4a8d54c4c3a0f4ab33
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:cat | (SystemOrganization listAtCategoryNamed: cat)
	collect: [:nm | Smalltalk at: nm]]).
(#class -> ViQueryMapDefinition).
(#id -> #'7057516c-b98e-ea4a-8d54-c4c3a0f4ab33').
(#inputKind -> String).
(#mapType -> #each).
(#outputKind -> ClassDescription).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 3:28:44 pm')})).
(#sourceCode -> '[:cat | (SystemOrganization listAtCategoryNamed: cat)
	collect: [:nm | Smalltalk at: nm]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})