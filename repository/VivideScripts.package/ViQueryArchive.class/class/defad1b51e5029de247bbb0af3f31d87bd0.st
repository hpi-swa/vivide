definitions
defad1b51e5029de247bbb0af3f31d87bd0
	<definition>

	^ ((Dictionary new) add: (#inputKind->ViAbstractQueryPart); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 9:31:08 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'ad1b51e5-029d-e247-bbb0-af3f31d87bd0'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step :context | (context contents indexOf: step organization) == 2
	ifTrue: [{
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]
	ifFalse: [#()]]'); add: (#mapType->#each); add: (#block->[:step :context | (context contents indexOf: step organization) == 2
	ifTrue: [{
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]
	ifFalse: [#()]]); yourself)