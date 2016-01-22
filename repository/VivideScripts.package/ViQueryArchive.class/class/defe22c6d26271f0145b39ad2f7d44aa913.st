definitions
defe22c6d26271f0145b39ad2f7d44aa913
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:navi | | authors |
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
		histogram collect: [:map | {map key. histogram first key. map value}]]]).
(#class -> ViQueryMapDefinition).
(#id -> #'e22c6d26-271f-0145-b39a-d2f7d44aa913').
(#inputKind -> SystemNavigation).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '18 November 2013 3:34:10 pm')})).
(#sourceCode -> '[:navi | | authors |
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
		histogram collect: [:map | {map key. histogram first key. map value}]]]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})