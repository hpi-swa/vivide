steps
step50bc0a136d3ef845bbf26c9e6df926e7
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:class :filter | 
	| isSuperclass |
	isSuperclass := class class == ViSeparator or: [(class includesBehavior: filter) not].
	{ 
		#icon -> (ViIconService doObject: class).
		#selectable -> (class class == ViSeparator) not.
		#morph -> (ViMorphService doObject: class). "For the separators."
		#text -> ((ViLabelService doObject: class) asText
				addAttribute: (class = filter
					ifTrue: [TextEmphasis bold] ifFalse: [TextEmphasis normal]);
				addAttribute: (TextColor color: (isSuperclass
					ifTrue: [Color gray] ifFalse: [Color black]));
				yourself). }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'0196c97a-2b0e-974a-a00a-751101d16c31').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 August 2019 4:43:08.416152 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:class :filter | 
	| isSuperclass |
	isSuperclass := class class == ViSeparator or: [(class includesBehavior: filter) not].
	{ 
		#icon -> (ViIconService doObject: class).
		#selectable -> (class class == ViSeparator) not.
		#morph -> (ViMorphService doObject: class). "For the separators."
		#text -> ((ViLabelService doObject: class) asText
				addAttribute: (class = filter
					ifTrue: [TextEmphasis bold] ifFalse: [TextEmphasis normal]);
				addAttribute: (TextColor color: (isSuperclass
					ifTrue: [Color gray] ifFalse: [Color black]));
				yourself). }]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'0196c97a-2b0e-974a-a00a-751101d16c31').
(#iconCode -> 'nil').
(#id -> #'50bc0a13-6d3e-f845-bbf2-6c9e6df926e7').
(#isProperty -> true).
(#label -> nil).
(#next -> #'351577f4-8441-1943-8f3c-fed16aa6769d').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '2 August 2019 4:43:08.416152 pm').
(#inputKind -> #(nil nil))
}))
})