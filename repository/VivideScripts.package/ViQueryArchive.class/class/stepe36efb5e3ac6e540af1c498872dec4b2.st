steps
stepe36efb5e3ac6e540af1c498872dec4b2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'6dd427e2-9e4e-b745-bda4-948a2487eccb').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:45:26 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]].
	result]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'6dd427e2-9e4e-b745-bda4-948a2487eccb').
(#iconCode -> 'ViEclipseIcons classHiIcon').
(#id -> #'e36efb5e-3ac6-e540-af1c-498872dec4b2').
(#isProperty -> false).
(#label -> 'Type Hierarchy').
(#next -> #'328d2fd9-190c-6f40-accd-afc2029f12c4').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> PackageInfo).
(#outputKind -> ClassDescription).
(#priority -> 3940).
(#view -> ViTreeViewExtended)
}))
})