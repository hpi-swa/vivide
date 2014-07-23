definitions
defb6a92974d1651d4d9061a006207ac4a8
	<definition>

	^ ((Dictionary new) add: (#inputKind->CompiledMethod); add: (#class->ViQueryMapDefinition); add: (#properties->((Dictionary new) add: (#creationAuthor->'mt'); add: (#creationTimeStamp->'24 February 2014 10:32:36 am'); yourself)); add: (#updateClearDefinition->nil); add: (#outputKind->Object); add: (#id->#'b6a92974-d165-1d4d-9061-a006207ac4a8'); add: (#updateSetDefinition->nil); add: (#sourceCode->'[:method | 
	"See CodeHolder >> commentContents"
	| poss aClass aSelector |
	aClass := method methodClass.
	aSelector := method selector.
	#text -> ((poss := aClass precodeCommentOrInheritedCommentFor: aSelector)
		isEmptyOrNil
			ifTrue: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), ''

Has no comment'') asText makeSelectorBoldIn: aClass]
				ifNil: [''Hamna'']]
			ifFalse: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), ''

'', poss) asText makeSelectorBoldIn: aClass]
				ifNil: [poss]])

]'); add: (#mapType->#each); add: (#block->[:method | 
	"See CodeHolder >> commentContents"
	| poss aClass aSelector |
	aClass := method methodClass.
	aSelector := method selector.
	#text -> ((poss := aClass precodeCommentOrInheritedCommentFor: aSelector)
		isEmptyOrNil
			ifTrue: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), '

Has no comment') asText makeSelectorBoldIn: aClass]
				ifNil: ['Hamna']]
			ifFalse: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), '

', poss) asText makeSelectorBoldIn: aClass]
				ifNil: [poss]])

]); yourself)