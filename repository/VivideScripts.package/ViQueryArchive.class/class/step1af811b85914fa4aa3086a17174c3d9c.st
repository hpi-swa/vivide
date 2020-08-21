steps
step1af811b85914fa4aa3086a17174c3d9c
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]) scaledToDisplay. #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText]).
		#doubleClicked -> [[ script openScript ]].
		#returnPressed -> [[ script openScript ]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'b6ce0874-004f-4245-8c30-280b2bec1485').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:script | {#icon
		-> (script nextIcon
				ifNil: [ViIcons blankIcon]) scaledToDisplay. #text
		-> (script nextLabel
				ifNil: [ViTextStyler new styledTextFor: script sourceCodeShort asText]).
		#doubleClicked -> [[ script openScript ]].
		#returnPressed -> [[ script openScript ]] }]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b6ce0874-004f-4245-8c30-280b2bec1485').
(#iconCode -> 'nil').
(#id -> #'1af811b8-5914-fa4a-a308-6a17174c3d9c').
(#isProperty -> true).
(#label -> nil).
(#next -> #'052b5238-6b50-0442-9f4f-56eeaf6e07d7').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '7 December 2015 2:00:40 pm').
(#resizeMode -> #spaceFill)
}))
})