definitions
def0481a903f8da2d429c11991745884f3d
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: ['error'].
	#text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText)]).
(#class -> ViQueryMapDefinition).
(#id -> #'0481a903-f8da-2d42-9c11-991745884f3d').
(#inputKind -> CompiledMethod).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 11:22:13 am')})).
(#sourceCode -> '[:method | "See CodeHolder >> sourceStringPrettifiedAndDiffed"
	| class selector sourceString |
	class := method methodClass.
	selector := method selector.
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [''error''].
	#text -> (ViTextStyler new
		classOrMetaClass: class;
		styledTextFor: (class prettyPrinterClass format: sourceString in: class notifying: nil) asText)]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})