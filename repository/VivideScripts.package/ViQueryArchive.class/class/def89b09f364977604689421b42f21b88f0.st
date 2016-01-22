definitions
def89b09f364977604689421b42f21b88f0
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:refs | refs reject: [:ref | ref classSymbol == #ViQueryArchive]]).
(#class -> ViQueryMapDefinition).
(#id -> #'89b09f36-4977-6046-8942-1b42f21b88f0').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:19:15 pm')})).
(#sourceCode -> '[:refs | refs reject: [:ref | ref classSymbol == #ViQueryArchive]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})