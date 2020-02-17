steps
stepa6b7eb35f794e7419102f303b6594f32
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:navi | | authors |
	authors := Bag new.
	navi allSelectorsAndMethodsDo: [:b :sel :method |
		(method timeStamp ifNil: [''] ifNotNil: [:s |
			(s subStrings: ' ') ifEmpty: [''] ifNotEmpty: [:tokens |
				(tokens select: [:token | token first isLetter])
					inject: '' into: [:nm :t | nm := nm, ' ', t]]])
		
		ifNotEmpty: [:nm | 
			(((b == ViQueryArchive class
				or: [sel endsWith: #Icon])
				or: [sel endsWith: #IconContents])
				or: [b name endsWith: 'Ui']) ifFalse: [authors add: nm withBlanksTrimmed]]].
	
	authors sortedCounts in: [:histogram |
		histogram collect: [:map | {map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'f4edd9d8-b908-9c40-a911-a9a20d4e20fe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:34:10 pm')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:navi | | authors |
	authors := Bag new.
	navi allSelectorsAndMethodsDo: [:b :sel :method |
		(method timeStamp ifNil: [''''] ifNotNil: [:s |
			(s subStrings: '' '') ifEmpty: [''''] ifNotEmpty: [:tokens |
				(tokens select: [:token | token first isLetter])
					inject: '''' into: [:nm :t | nm := nm, '' '', t]]])
		
		ifNotEmpty: [:nm | 
			(((b == ViQueryArchive class
				or: [sel endsWith: #Icon])
				or: [sel endsWith: #IconContents])
				or: [b name endsWith: ''Ui'']) ifFalse: [authors add: nm withBlanksTrimmed]]].
	
	authors sortedCounts in: [:histogram |
		histogram collect: [:map | {map key. histogram first key. map value}]]]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'f4edd9d8-b908-9c40-a911-a9a20d4e20fe').
(#iconCode -> 'UiSilkIcons userSuitIcon').
(#id -> #'a6b7eb35-f794-e741-9102-f303b6594f32').
(#isProperty -> false).
(#label -> 'Count Authors').
(#next -> #'d82ec0a6-a967-514a-953c-27fcb67ec3d3').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '28 August 2013 2:37:39 pm').
(#inputKind -> SystemNavigation).
(#priority -> 810).
(#view -> ViTreeViewExtended)
}))
})