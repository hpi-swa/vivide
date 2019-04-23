definitions
defcf0824b7d1f22742aff9793511335e6b
	<definition>

	^ (Dictionary newFrom: {
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
(#class -> ViScriptDefinition).
(#id -> #'cf0824b7-d1f2-2742-aff9-793511335e6b').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '24 February 2014 10:32:36 am')})).
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
			value: in) do: [:result | out add: result]]')})