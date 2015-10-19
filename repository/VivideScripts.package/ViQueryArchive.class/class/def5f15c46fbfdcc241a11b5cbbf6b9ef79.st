definitions
def5f15c46fbfdcc241a11b5cbbf6b9ef79
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#copyOf->#'2822a617-9ef3-d644-98ed-f98dbb95168f'); add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 October 2015 2:07 pm'); yourself)); add: (#id->#'5f15c46f-bfdc-c241-a11b-5cbbf6b9ef79'); add: (#block->[:in :out | [(SourceFiles at: 2) readOnlyCopy in: [:changeFile | 
	changeFile setConverterForCode.
	(ChangeList new
		scanFile: changeFile
		from: Smalltalk lastQuitLogPosition
		to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]); add: (#sourceCode->'[:in :out | [(SourceFiles at: 2) readOnlyCopy in: [:changeFile | 
	changeFile setConverterForCode.
	(ChangeList new
		scanFile: changeFile
		from: Smalltalk lastQuitLogPosition
		to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]'); yourself)