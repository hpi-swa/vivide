definitions
def2822a6179ef3d64498edf98dbb95168f
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]).
(#class -> ViScriptDefinition).
(#id -> #'2822a617-9ef3-d644-98ed-f98dbb95168f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 10:57:19 am')})).
(#sourceCode -> '[:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]')})