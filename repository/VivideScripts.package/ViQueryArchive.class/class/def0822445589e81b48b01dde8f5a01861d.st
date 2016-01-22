definitions
def0822445589e81b48b01dde8f5a01861d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:classes | classes select: [:cls | cls organization classComment isEmpty]]).
(#class -> ViQueryMapDefinition).
(#id -> #'08224455-89e8-1b48-b01d-de8f5a01861d').
(#inputKind -> Class).
(#mapType -> #all).
(#outputKind -> Class).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:46:24 pm')})).
(#sourceCode -> '[:classes | classes select: [:cls | cls organization classComment isEmpty]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})