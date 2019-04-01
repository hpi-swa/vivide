definitions
defb6a92974d1651d4d9061a006207ac4a8
	<definition>

	^ (Dictionary newFrom: {
(#block -> [:method | 
	"See CodeHolder >> commentContents"
	| poss aClass aSelector |
	aClass := method methodClass.
	aSelector := method selector.
	{ #text -> ((poss := aClass precodeCommentOrInheritedCommentFor: aSelector)
		isEmptyOrNil
			ifTrue: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), '

Has no comment') asText makeSelectorBoldIn: aClass]
				ifNil: ['Hamna']]
			ifFalse: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), '

', poss) asText makeSelectorBoldIn: aClass]
				ifNil: [poss]])

}]).
(#class -> ViQueryMapDefinition).
(#id -> #'b6a92974-d165-1d4d-9061-a006207ac4a8').
(#inputKind -> CompiledMethod).
(#mapType -> #each).
(#outputKind -> Object).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 10:32:36 am')})).
(#sourceCode -> '[:method | 
	"See CodeHolder >> commentContents"
	| poss aClass aSelector |
	aClass := method methodClass.
	aSelector := method selector.
	{ #text -> ((poss := aClass precodeCommentOrInheritedCommentFor: aSelector)
		isEmptyOrNil
			ifTrue: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), ''

Has no comment'') asText makeSelectorBoldIn: aClass]
				ifNil: [''Hamna'']]
			ifFalse: [aSelector
				ifNotNil: [((aClass methodHeaderFor: aSelector), ''

'', poss) asText makeSelectorBoldIn: aClass]
				ifNil: [poss]])

}]').
(#updateClearDefinition -> nil).
(#updateSetDefinition -> nil)})