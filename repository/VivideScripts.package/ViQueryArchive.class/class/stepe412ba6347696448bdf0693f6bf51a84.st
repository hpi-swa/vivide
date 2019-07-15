steps
stepe412ba6347696448bdf0693f6bf51a84
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | 
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

}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]).
(#className -> #ViScriptDefinition).
(#id -> #'cf0824b7-d1f2-2742-aff9-793511335e6b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 10:32:36 am')
})).
(#sourceCode -> '[:in :out | ([:all | all collect: [:o | (
	[:textOrObject | textOrObject isText ifTrue: [ { #text -> textOrObject } ] ifFalse: [ [:method | 
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

}] value: textOrObject]]
		value: o), { #object -> o }]]
			value: in) do: [:result | out add: result]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'cf0824b7-d1f2-2742-aff9-793511335e6b').
(#iconCode -> 'nil').
(#id -> #'e412ba63-4769-6448-bdf0-693f6bf51a84').
(#isProperty -> true).
(#label -> 'Documentation').
(#next -> nil).
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '11 February 2014 1:01:49 pm').
(#inputKind -> CompiledMethod).
(#priority -> 5790).
(#view -> ViTreeViewExtended)
}))
})