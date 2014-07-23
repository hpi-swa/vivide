definitions
defe22c6d26271f0145b39ad2f7d44aa913
	<definition>

	^ ((Dictionary new) add: (#inputKind->SystemNavigation); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'18 November 2013 3:34:10 pm'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'e22c6d26-271f-0145-b39a-d2f7d44aa913'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:navi | | authors |
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
		histogram collect: [:map | {map key. histogram first key. map value}]]]'); add: (#mapType->#each); add: (#block->[:navi | | authors |
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
		histogram collect: [:map | {map key. histogram first key. map value}]]]); yourself)