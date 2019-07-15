steps
step074a7165102004428a76a2ce9f8ab3e6
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | out addAll: ([:classes | classes select: [:cls | cls organization classComment isEmpty]] value: in)]).
(#className -> #ViScriptDefinition).
(#id -> #'05842206-23b0-2f46-8426-f5915ac0ff37').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:46:24 pm')
})).
(#sourceCode -> '[:in :out | out addAll: ([:classes | classes select: [:cls | cls organization classComment isEmpty]] value: in)]')
})).
(#className -> #ViScriptStep).
(#definition -> #'05842206-23b0-2f46-8426-f5915ac0ff37').
(#iconCode -> 'UiFugueIcons questionBalloonIcon').
(#id -> #'074a7165-1020-0442-8a76-a2ce9f8ab3e6').
(#isProperty -> false).
(#label -> 'Uncommented Classes').
(#next -> #'e847db70-263a-3b49-a792-9d80a42da426').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '13 September 2013 7:46:24 pm').
(#inputKind -> Class).
(#outputKind -> Class).
(#priority -> 3510).
(#view -> ViTreeViewExtended)
}))
})