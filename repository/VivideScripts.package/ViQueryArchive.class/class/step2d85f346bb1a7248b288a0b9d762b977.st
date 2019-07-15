steps
step2d85f346bb1a7248b288a0b9d762b977
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [SystemNavigation allMethodsSelect: [:m | m linesOfCode > 100]] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b5658c53-1fc3-9f4b-9bf3-27a2aefdd1fe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | [SystemNavigation allMethodsSelect: [:m | m linesOfCode > 100]] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b5658c53-1fc3-9f4b-9bf3-27a2aefdd1fe').
(#iconCode -> 'nil').
(#id -> #'2d85f346-bb1a-7248-b288-a0b9d762b977').
(#isProperty -> false).
(#label -> 'Large Methods').
(#next -> #'63c84001-9d52-ee47-b4a7-446b7242ea74').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#isGlobal -> true).
(#priority -> 920).
(#view -> ViTreeViewExtended)
}))
})