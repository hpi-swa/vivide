steps
step4a7cf538185acd4d8cc2bfea887bdc3f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:methods | methods inject: 0 into: [:sum :each | sum + each linesOfCode]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'5af5db76-9b3d-0643-8be1-951341a93946').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '17 January 2014 3:28:31 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:methods | methods inject: 0 into: [:sum :each | sum + each linesOfCode]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'5af5db76-9b3d-0643-8be1-951341a93946').
(#iconCode -> 'nil').
(#id -> #'4a7cf538-185a-cd4d-8cc2-bfea887bdc3f').
(#isProperty -> false).
(#label -> 'Lines of Code').
(#next -> #'7df281f1-3570-9440-b69e-f00d41128ad0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> CompiledMethod).
(#priority -> 4750).
(#view -> ViTreeViewExtended)
}))
})