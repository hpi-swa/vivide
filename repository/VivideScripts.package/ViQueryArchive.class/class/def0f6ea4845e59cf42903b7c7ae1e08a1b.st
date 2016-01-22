definitions
def0f6ea4845e59cf42903b7c7ae1e08a1b
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:selectors :context | context contents select: [:ref | selectors includes: ref selector]]).
(#class -> ViQueryMapDefinition).
(#id -> #'0f6ea484-5e59-cf42-903b-7c7ae1e08a1b').
(#inputKind -> Object).
(#mapType -> #all).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:22:26 pm')})).
(#sourceCode -> '[:selectors :context | context contents select: [:ref | selectors includes: ref selector]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})