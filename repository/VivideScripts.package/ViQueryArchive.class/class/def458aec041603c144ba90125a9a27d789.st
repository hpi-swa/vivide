definitions
def458aec041603c144ba90125a9a27d789
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:wnd | #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: ['-'] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil])]).
(#class -> ViQueryMapDefinition).
(#id -> #'458aec04-1603-c144-ba90-125a9a27d789').
(#inputKind -> Object).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 July 2014 2:15:45 pm')})).
(#sourceCode -> '[:wnd | #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: [''-''] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil])]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})