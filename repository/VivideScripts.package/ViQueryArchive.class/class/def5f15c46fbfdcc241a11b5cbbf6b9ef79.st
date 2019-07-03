definitions
def5f15c46fbfdcc241a11b5cbbf6b9ef79
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [(SourceFiles at: 2) readOnlyCopy in: [:changeFile | 
	changeFile setConverterForCode.
	(ChangeList new
		scanFile: changeFile
		from: Smalltalk lastQuitLogPosition
		to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'5f15c46f-bfdc-c241-a11b-5cbbf6b9ef79').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 2:07 pm')
})).
(#sourceCode -> '[:in :out | [(SourceFiles at: 2) readOnlyCopy in: [:changeFile | 
	changeFile setConverterForCode.
	(ChangeList new
		scanFile: changeFile
		from: Smalltalk lastQuitLogPosition
		to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]')
})