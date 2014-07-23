definitions
defbf222edfff5f71498f7ed65994f90ce9
	<definition>

	^ ((Dictionary new) add: (#inputKind->ViAbstractQueryPart); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 September 2013 9:29:58 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'bf222edf-ff5f-7149-8f7e-d65994f90ce9'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:step :context | (context contents indexOf: step organization) == 1
	ifTrue: [{
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]
	ifFalse: [#()]]'); add: (#mapType->#each); add: (#block->[:step :context | (context contents indexOf: step organization) == 1
	ifTrue: [{
		#text -> (ViLabelService doObject: step).
		#icon -> (ViIconService doObject: step)}]
	ifFalse: [#()]]); yourself)