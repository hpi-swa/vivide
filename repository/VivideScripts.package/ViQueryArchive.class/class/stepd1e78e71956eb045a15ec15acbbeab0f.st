steps
stepd1e78e71956eb045a15ec15acbbeab0f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'6d4ec044-0ecb-aa49-bc62-0eaaf7b94ccc').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 February 2014 5:50:41 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:process | 
	"See Debugger >> expandStack, fullyExpandStack"
	process suspendedContext
		ifNil: [#()]
		ifNotNil: [:ctxt | ctxt stackOfSize: 10 + 100000]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6d4ec044-0ecb-aa49-bc62-0eaaf7b94ccc').
(#iconCode -> 'UiSilkIcons bugIcon').
(#id -> #'d1e78e71-956e-b045-a15e-c15acbbeab0f').
(#isProperty -> false).
(#label -> 'Debugger').
(#next -> #'d1fc3ac8-c0bb-cf47-955a-7e0b24221803').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> Process).
(#outputKind -> Context).
(#priority -> 5150).
(#view -> ViTreeViewExtended)
}))
})