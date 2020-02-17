steps
step55770d7ef791354ca84e9115c67743d2
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:class :filter | class class == ViSeparator ifFalse: [{
	(class includesBehavior: filter)
		ifTrue: [class subclasses]
		ifFalse: [class subclasses detect: [:cls | filter includesBehavior: cls]].
	filter } asTuples ]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'49218987-1f6b-bc40-8fe9-7b2a0d04020f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 August 2019 4:43:58.851152 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:class :filter | class class == ViSeparator ifFalse: [{
	(class includesBehavior: filter)
		ifTrue: [class subclasses]
		ifFalse: [class subclasses detect: [:cls | filter includesBehavior: cls]].
	filter } asTuples ]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'49218987-1f6b-bc40-8fe9-7b2a0d04020f').
(#iconCode -> 'nil').
(#id -> #'55770d7e-f791-354c-a84e-9115c67743d2').
(#isProperty -> false).
(#label -> nil).
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#after -> #(#'50bc0a13-6d3e-f845-bbf2-6c9e6df926e7')).
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 August 2019 4:43:58.851152 pm').
(#inputKind -> #(nil nil))
}))
})