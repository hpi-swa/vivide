steps
stepunsavedChanges
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'2822a617-9ef3-d644-98ed-f98dbb95168f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 10:57:19 am')
})).
(#sourceCode -> '[:in :out | [(SourceFiles at: 2) readOnlyCopy
		in: [:changeFile | 
			changeFile setConverterForCode.
			(ChangeList new
				scanFile: changeFile
				from: Smalltalk lastQuitLogPosition
				to: changeFile size) changeList]] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'2822a617-9ef3-d644-98ed-f98dbb95168f').
(#iconCode -> 'nil').
(#id -> #unsavedChanges).
(#isProperty -> false).
(#label -> nil).
(#next -> #'012db9f4-4e1e-cc49-aa55-265d82592ec7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 October 2015 10:57:19 am').
(#isGlobal -> true).
(#notifier -> ViSqueakSystemChangeNotifier)
}))
})