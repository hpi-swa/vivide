definitions
def0481a903f8da2d429c11991745884f3d
	<definition>

	^ ((Dictionary new) add: (#inputKind->CompiledMethod); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'24 February 2014 11:22:13 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'0481a903-f8da-2d42-9c11-991745884f3d'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [''error''].
	#text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText)]'); add: (#mapType->#each); add: (#block->[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
	#text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText)]); yourself)