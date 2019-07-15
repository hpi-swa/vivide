steps
stepobjectExplorer
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: in]).
(#className -> #ViScriptDefinition).
(#id -> #'9f3b781a-255d-f245-bee1-3fcf39040b9d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2015 11:56:40 am')
})).
(#sourceCode -> '[:in :out | out addAll: in]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9f3b781a-255d-f245-bee1-3fcf39040b9d').
(#iconCode -> 'UiFugueIcons magnifierMediumIcon').
(#id -> #objectExplorer).
(#isProperty -> false).
(#label -> 'Inspector').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '12 November 2015 11:56:40 am').
(#editable -> true).
(#priority -> 500).
(#view -> ViExplorerView).
(#windowTitle -> #simple)
}))
})