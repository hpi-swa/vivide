definitions
def47cabae43c613b4fa16b87529b48d989
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes | classes gather: [:cls |
	cls allInstVarNames collect: [:nm |
		nm -> cls]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'47cabae4-3c61-3b4f-a16b-87529b48d989').
(#inputKind -> ClassDescription).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')})).
(#sourceCode -> '[:classes | classes gather: [:cls |
	cls allInstVarNames collect: [:nm |
		nm -> cls]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})