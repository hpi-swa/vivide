steps
stepclassHierarchy
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | 
	"Use the input class as a filter for this script."
	{
		{ ViSeparator for: 'Hierarchy for class ''', class name, ''''. class }.
		{Object "ProtoObject?". class "filter"}
	}]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'c05078c3-60b7-974f-9638-11f50024055a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 1:06:03 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | 
	"Use the input class as a filter for this script."
	{
		{ ViSeparator for: ''Hierarchy for class '''''', class name, ''''''''. class }.
		{Object "ProtoObject?". class "filter"}
	}]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'c05078c3-60b7-974f-9638-11f50024055a').
(#iconCode -> 'UiSilkIcons carIcon').
(#id -> #classHierarchy).
(#isProperty -> false).
(#label -> 'Class Hierarchy').
(#next -> #'50bc0a13-6d3e-f845-bbf2-6c9e6df926e7').
(#properties -> (Dictionary newFrom: {
(#after -> #()).
(#before -> #()).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '9 December 2015 1:06:03 pm').
(#expandAll -> true).
(#inputKind -> ClassDescription).
(#priority -> 300).
(#selectSame -> true).
(#view -> ViTreeViewExtended)
}))
})