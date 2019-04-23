definitions
deff4edd9d8b9089c40a911a9a20d4e20fe
	<definition>

	^ (Dictionary newFrom: {
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
(#class -> ViScriptDefinition).
(#id -> #'f4edd9d8-b908-9c40-a911-a9a20d4e20fe').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:34:10 pm')})).
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
		value: in) do: [:result | out addAll: result asList]]')})