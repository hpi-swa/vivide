steps
stepd0bfa2e31713bc4e8d3dbeebe13a82dd
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:cls | {cls withAllSuperclasses. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'9be3ea3b-0a85-d04d-b5dd-8b21b3c5fb1d').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 4:36:50 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:cls | {cls withAllSuperclasses. cls} asTuples]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'9be3ea3b-0a85-d04d-b5dd-8b21b3c5fb1d').
(#iconCode -> 'nil').
(#id -> #'d0bfa2e3-1713-bc4e-8d3d-beebe13a82dd').
(#isProperty -> false).
(#label -> 'Instance variable references').
(#next -> #'15556af2-d4c7-2546-a094-08a896f718e0').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 May 2018 4:36:50 pm').
(#inputKind -> ClassDescription).
(#notifier -> ViSqueakSystemChangeNotifier).
(#priority -> 270).
(#view -> ViTreeViewExtended)
}))
})