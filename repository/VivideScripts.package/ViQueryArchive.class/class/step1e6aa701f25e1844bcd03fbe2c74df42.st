steps
step1e6aa701f25e1844bcd03fbe2c74df42
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
"	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]]."
	result]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'64f81235-6954-c147-9447-0bb5de39f7e2').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:45:26 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:pkg | | result |
	result := OrderedCollection new.
	result addAll: pkg classes.
"	#(hasPreamble preamble hasPostscript postscript hasPreambleOfRemoval preambleOfRemoval hasPostscriptOfRemoval postscriptOfRemoval) pairsDo: [:check :script | (pkg perform: check) ifTrue: [result add: script -> (pkg perform: script)]]."
	result]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'64f81235-6954-c147-9447-0bb5de39f7e2').
(#iconCode -> 'nil').
(#id -> #'1e6aa701-f25e-1844-bcd0-3fbe2c74df42').
(#isProperty -> false).
(#label -> nil).
(#next -> #'074a7165-1020-0442-8a76-a2ce9f8ab3e6').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:45:26 pm').
(#inputKind -> PackageInfo).
(#outputKind -> ClassDescription).
(#priority -> 760).
(#view -> ViTreeViewExtended)
}))
})