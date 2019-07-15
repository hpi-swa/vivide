steps
step4e83040adb7bc9418c4ff03b8556fca4
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:class | {
	ClassOrganizer allCategory -> class},
	(class organization categories collect: [:category | category -> class])]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'fa9ad535-af43-d64d-af54-6c375a48611e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 4:28:07 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:class | {
	ClassOrganizer allCategory -> class},
	(class organization categories collect: [:category | category -> class])]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'fa9ad535-af43-d64d-af54-6c375a48611e').
(#iconCode -> 'nil').
(#id -> #'4e83040a-db7b-c941-8c4f-f03b8556fca4').
(#isProperty -> false).
(#label -> 'Methods by Protocol').
(#next -> #'601f4f47-9545-0e4e-abef-e7b5dc4c0c3e').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> ClassDescription).
(#outputKind -> Association).
(#priority -> 5660).
(#view -> ViTreeViewExtended)
}))
})