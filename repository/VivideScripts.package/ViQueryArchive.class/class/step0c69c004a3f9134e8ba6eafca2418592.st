steps
step0c69c004a3f9134e8ba6eafca2418592
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9fc661bc-d3e1-4b4d-9836-d852059fbf65').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 5:12:19 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:navi | navi allClasses collect: [:cls | (cls theMetaClass selectors
	detect: [:s | #(uniqueInstance instance default main current) includes: s]
	ifNone: []) ifNotNil: [:s | [(MethodReference class: cls theMetaClass selector: s) -> (cls perform: s)] on: Error do: []]]
		thenSelect: [:obj | obj value notNil]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9fc661bc-d3e1-4b4d-9836-d852059fbf65').
(#iconCode -> 'UiSilkIcons starIcon').
(#id -> #'0c69c004-a3f9-134e-8ba6-eafca2418592').
(#isProperty -> false).
(#label -> 'Singletons and defaults').
(#next -> #'f45b857e-e698-274c-b3d6-467851b2d5dc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> SystemNavigation).
(#priority -> 4430).
(#view -> ViTreeViewExtended)
}))
})