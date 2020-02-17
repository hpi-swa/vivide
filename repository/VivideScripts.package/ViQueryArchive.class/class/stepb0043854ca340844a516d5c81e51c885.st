steps
stepb0043854ca340844a516d5c81e51c885
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [| result |
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :s :m |
		(m hasLiteral: #whileTrue:) ifTrue: [result add: m]].
	(result gather: [:method | | node vars next |
		node := RBParser parseMethod: method getSource asString.
		vars := Set new.
		next := OrderedCollection new.
		next addAll: node children.
		[next notEmpty] whileTrue: [
			next removeFirst in: [:n |
				n isVariable ifTrue: [vars add: n name].
				next addAll: n children]].
		vars asSet]) asSet asOrderedCollection] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'8a228145-11c6-f34e-a4ee-2edd4c5766e0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | [| result |
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :s :m |
		(m hasLiteral: #whileTrue:) ifTrue: [result add: m]].
	(result gather: [:method | | node vars next |
		node := RBParser parseMethod: method getSource asString.
		vars := Set new.
		next := OrderedCollection new.
		next addAll: node children.
		[next notEmpty] whileTrue: [
			next removeFirst in: [:n |
				n isVariable ifTrue: [vars add: n name].
				next addAll: n children]].
		vars asSet]) asSet asOrderedCollection] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'8a228145-11c6-f34e-a4ee-2edd4c5766e0').
(#iconCode -> 'nil').
(#id -> #'b0043854-ca34-0844-a516-d5c81e51c885').
(#isProperty -> false).
(#label -> 'Variables for whileTrue senders').
(#next -> #'5c3b9aae-476e-cc4f-96a1-da5e5ab421ad').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#isGlobal -> true).
(#priority -> 940).
(#view -> ViTreeViewExtended)
}))
})