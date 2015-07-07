definitions
def458aec041603c144ba90125a9a27d789
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'13 July 2014 2:15:45 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'458aec04-1603-c144-ba90-125a9a27d789'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:wnd | #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: [''-''] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil])]'); add: (#mapType->#each); add: (#block->[:wnd | #text -> (wnd isSystemWindow ifTrue: [wnd label ifNil: ['-'] ifNotNil: [:lbl | lbl asString]] ifFalse: [nil])]); yourself)