steps
step83e798e68b86d34090fc4a5ddf0d7351
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:t | (
	[:object :array | object class == ViSeparator ifTrue: [ {#text -> ' '} ] ifFalse: [{ 
		#text -> object linesOfCode asString }] ]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'1c678503-2e69-1540-8633-44ec09fe7784').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 10:30:52.962728 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:t | (
	[:object :array | object class == ViSeparator ifTrue: [ {#text -> '' ''} ] ifFalse: [{ 
		#text -> object linesOfCode asString }] ]
		valueWithArguments: t), { #object -> t first. #objects -> {t} }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'1c678503-2e69-1540-8633-44ec09fe7784').
(#iconCode -> 'nil').
(#id -> #'83e798e6-8b86-d340-90fc-4a5ddf0d7351').
(#isProperty -> true).
(#label -> nil).
(#next -> #'45f3504e-509f-df49-b528-bc0333f9b718').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 0.553 g: 0.796 b: 0.553)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2019 10:30:52.962728 am').
(#inputKind -> #(nil nil))
}))
})