steps
step738b7ab110edd147a3b090796979a5fc
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:tuple |
		[:m :b | 
	m class == ViSeparator ifTrue: [#()] ifFalse: [
	b flatten sorted: [:c1 :c2 | c1 name <= c2  name]]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9c5db4e4-d289-9140-8ebf-da4caa99c46f').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:24:32.927572 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:tuple |
		[:m :b | 
	m class == ViSeparator ifTrue: [#()] ifFalse: [
	b flatten sorted: [:c1 :c2 | c1 name <= c2  name]]] valueWithArguments: tuple]]
			value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9c5db4e4-d289-9140-8ebf-da4caa99c46f').
(#iconCode -> 'nil').
(#id -> #'738b7ab1-10ed-d147-a3b0-90796979a5fc').
(#isProperty -> false).
(#label -> nil).
(#next -> #'ea3ee324-6beb-104e-bbc9-ca2e857d247c').
(#properties -> (Dictionary newFrom: {
(#after -> #(#defaultPropertiesExtended)).
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '27 August 2019 6:24:32.927572 pm').
(#inputKind -> #(nil nil))
}))
})