steps
step263f43b53e25214b93bef88d5ecf84b5
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b41b99d3-9f47-6242-bf1f-28dcc2c72674').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 September 2013 3:38:09 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | 
	#(halt haltOnce haltIf: haltIfNil halt: haltOnce: haltOnCount:) gather: [:symbol |
		(SystemNavigation allCallsOn: symbol localToPackage: pkg) gather: [:ref |
			ViFlagComment newListFromReference: ref message: symbol]]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b41b99d3-9f47-6242-bf1f-28dcc2c72674').
(#iconCode -> 'ViEclipseIcons breakpointViewIcon').
(#id -> #'263f43b5-3e25-214b-93be-f88d5ecf84b5').
(#isProperty -> false).
(#label -> 'Breakpoints').
(#next -> #'829e7d5e-2892-544a-a015-d5efe0983785').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageInfo).
(#outputKind -> ViFlagComment).
(#priority -> 4010).
(#view -> ViTreeViewExtended)
}))
})