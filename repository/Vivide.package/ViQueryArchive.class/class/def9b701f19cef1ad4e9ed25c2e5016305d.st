definitions
def9b701f19cef1ad4e9ed25c2e5016305d
	<definition>

	^ ((Dictionary new) add: (#inputKind->Object); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'6 February 2014 9:44:44 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->ViQuerySnippetDefinition); add: (#id->#'9b701f19-cef1-ad4e-9ed2-5c2e5016305d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:someObjects | someObjects
	ifEmpty: [ViQueryOrganizer default snippetDefinitions select: [:def | def inputKind == UndefinedObject]]
	ifNotEmpty: [:objs |
		(ViQueryChooser collectBaseClassesForContext: objs) in: [:baseClasses |.
			ViQueryOrganizer default snippetDefinitions select: [:def |
				"def receiverIsCollection not | (someObjects size > 1)" true
					and: [baseClasses includes: def inputKind]]]]].'); add: (#mapType->#all); add: (#block->[:someObjects | someObjects
	ifEmpty: [ViQueryOrganizer default snippetDefinitions select: [:def | def inputKind == UndefinedObject]]
	ifNotEmpty: [:objs |
		(ViQueryChooser collectBaseClassesForContext: objs) in: [:baseClasses |.
			ViQueryOrganizer default snippetDefinitions select: [:def |
				"def receiverIsCollection not | (someObjects size > 1)" true
					and: [baseClasses includes: def inputKind]]]]]); yourself)