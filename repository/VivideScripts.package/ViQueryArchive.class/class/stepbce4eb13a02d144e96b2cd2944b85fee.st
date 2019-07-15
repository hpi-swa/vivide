steps
stepbce4eb13a02d144e96b2cd2944b85fee
	<step>

	^ (Dictionary newFrom: {
(#'_def' -> (Dictionary newFrom: {
(#block -> [:in :out | (
	[:objects | objects collect: [:object |
	"Inspector >> fieldList, selection"
	{#self -> object.
	#'all inst vars' -> (object longPrintStringLimitedTo: 20000).},
	(object class allInstVarNames withIndexCollect: [:nm :idx |
		idx <= object class instSize
			ifTrue: [nm -> (object instVarAt: idx)] 
			ifFalse: [ | basicIndex |
				basicIndex := idx - object class instSize.
				(object basicSize <= (100 + 10) or: [basicIndex <= 100])
					ifTrue: [nm -> (object basicAt: basicIndex)]
					ifFalse: [nm -> (object basicAt: object basicSize - (100 + 10) + basicIndex)]]])]]
		value: in) do: [:result | out addAll: result asList]]).
(#className -> #ViScriptDefinition).
(#id -> #'78d34cba-9aaa-1743-b23e-2bc87f34d97a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 10:12:18 am')
})).
(#sourceCode -> '[:in :out | (
	[:objects | objects collect: [:object |
	"Inspector >> fieldList, selection"
	{#self -> object.
	#''all inst vars'' -> (object longPrintStringLimitedTo: 20000).},
	(object class allInstVarNames withIndexCollect: [:nm :idx |
		idx <= object class instSize
			ifTrue: [nm -> (object instVarAt: idx)] 
			ifFalse: [ | basicIndex |
				basicIndex := idx - object class instSize.
				(object basicSize <= (100 + 10) or: [basicIndex <= 100])
					ifTrue: [nm -> (object basicAt: basicIndex)]
					ifFalse: [nm -> (object basicAt: object basicSize - (100 + 10) + basicIndex)]]])]]
		value: in) do: [:result | out addAll: result asList]]')
})).
(#className -> #ViScriptStep).
(#definition -> #'78d34cba-9aaa-1743-b23e-2bc87f34d97a').
(#iconCode -> 'UiFugueIcons magnifierMediumIcon').
(#id -> #'bce4eb13-a02d-144e-96b2-cd2944b85fee').
(#isProperty -> false).
(#label -> 'Inspector').
(#next -> #'c50d0c14-b3eb-cf47-9e8a-7ba23cb2c4dd').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 10:12:18 am').
(#outputKind -> Association).
(#priority -> 5170).
(#view -> ViTreeViewExtended)
}))
})