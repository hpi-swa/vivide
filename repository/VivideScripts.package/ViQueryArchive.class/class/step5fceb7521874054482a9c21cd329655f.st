steps
step5fceb7521874054482a9c21cd329655f
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects reject: [:point | (point at: 'is_outlier') = '1']]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'b0dd3163-d6d5-ed48-adfc-c55794f504a1').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '30 September 2020 12:40:49.664427 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects reject: [:point | (point at: ''is_outlier'') = ''1'']]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'b0dd3163-d6d5-ed48-adfc-c55794f504a1').
(#iconCode -> 'nil').
(#id -> #'5fceb752-1874-0544-82a9-c21cd329655f').
(#isProperty -> false).
(#label -> 'Gait Analysis').
(#next -> #'567bb861-7ed9-024c-b5ec-665e64cf2690').
(#properties -> (Dictionary newFrom: {
(#color -> (Color r: 1 g: 1 b: 1)).
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '30 September 2020 12:40:49.663427 pm').
(#horizontalLabel -> 'Stride Length OptoGait (m)').
(#horizontalPrecision -> 2).
(#inputKind -> OrderedDictionary).
(#notifier -> [ViEventNotifier named: #gait]).
(#priority -> 10).
(#topLabel -> [:t1 | 'MMR n = {1}' format: {t1 size}]).
(#verticalLabel -> 'Stride Length IMU (m)').
(#verticalPrecision -> 2).
(#view -> ViScatterPlotView)
}))
})