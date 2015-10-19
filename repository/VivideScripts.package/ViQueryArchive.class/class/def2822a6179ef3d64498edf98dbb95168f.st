definitions
def2822a6179ef3d64498edf98dbb95168f
	<definition>

	^ ((Dictionary new) add: (#class->ViQueryStepDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'19 October 2015 10:57:19 am'); yourself)); add: (#id->#'2822a617-9ef3-d644-98ed-f98dbb95168f'); add: (#block->[:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]); add: (#sourceCode->'[:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]'); yourself)