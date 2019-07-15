steps
step3dcd19258f140c4ca86106178920b36d
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'36a58b83-0ad6-ab45-83c4-4ad328747a8a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 February 2014 2:02:54 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:method | CodeHolder new
	contents: (method methodClass newCompiler format: method getSource in: method methodClass notifying: nil decorated: true);
	instVarNamed: #currentCompiledMethod put: method;
	yourself]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'36a58b83-0ad6-ab45-83c4-4ad328747a8a').
(#iconCode -> 'nil').
(#id -> #'3dcd1925-8f14-0c4c-a861-06178920b36d').
(#isProperty -> false).
(#label -> 'Pretty printed methods').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> CompiledMethod).
(#outputKind -> ViSourceCodeSnippet).
(#priority -> 5120).
(#view -> ViTreeViewExtended)
}))
})