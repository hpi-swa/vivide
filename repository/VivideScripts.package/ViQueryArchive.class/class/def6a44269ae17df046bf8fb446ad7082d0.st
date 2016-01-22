definitions
def6a44269ae17df046bf8fb446ad7082d0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:obj | obj isVariableBinding ifTrue: ['variables'] ifFalse: ['methods']]).
(#class -> ViQueryMapDefinition).
(#id -> #'6a44269a-e17d-f046-bf8f-b446ad7082d0').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 September 2013 5:27:17 pm')})).
(#sourceCode -> '[:obj | obj isVariableBinding ifTrue: [''variables''] ifFalse: [''methods'']]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})