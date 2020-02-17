steps
stepaf7030042f554940abd6c3b1a717db27
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | [|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result] value in: [:result |
	out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'be0082fe-f238-c54a-9220-32909fda1e3d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm')
})).
(#sourceCode -> '[:in :out | [|result|
	result := OrderedCollection new.
	SystemNavigation allSelectorsAndMethodsDo: [:b :selector :method |
		(ViMethodVersion versionsOfMethod: method methodReference) size > 3
			ifTrue: [result add: method]].
	result] value in: [:result |
	out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'be0082fe-f238-c54a-9220-32909fda1e3d').
(#iconCode -> 'nil').
(#id -> #'af703004-2f55-4940-abd6-c3b1a717db27').
(#isProperty -> false).
(#label -> 'Methods w/ Longest History').
(#next -> #'59e1a354-ea9e-3d4d-b4c6-70d3a9eb6d48').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> ProtoObject).
(#isGlobal -> true).
(#priority -> 930).
(#view -> ViTreeViewExtended)
}))
})