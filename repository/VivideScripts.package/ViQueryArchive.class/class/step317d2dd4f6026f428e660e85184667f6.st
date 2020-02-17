steps
step317d2dd4f6026f428e660e85184667f6
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'821a5cd9-8149-5a44-84c8-b57a49837356').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 11:22:16 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | "See TestRunner >> findCategories"
	| visible |
	visible := Set new.
	class withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	Array streamContents: [ :stream |
		Smalltalk organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ] ]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'821a5cd9-8149-5a44-84c8-b57a49837356').
(#iconCode -> 'nil').
(#id -> #'317d2dd4-f602-6f42-8e66-0e85184667f6').
(#isProperty -> false).
(#label -> 'Categories of subclasses').
(#next -> #'a8d9e9fc-0bb3-384b-9bae-e3c1edb07163').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> Behavior).
(#outputKind -> String).
(#priority -> 5210).
(#view -> ViTreeViewExtended)
}))
})