definitions
def78d34cba9aaa1743b23e2bc87f34d97a
	<definition>

	^ (Dictionary newFrom: {
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
(#class -> ViQueryStepDefinition).
(#id -> #'78d34cba-9aaa-1743-b23e-2bc87f34d97a').
(#properties -> (Dictionary newFrom: {
(#creationAuthor -> 'mt').
(#creationTimeStamp -> '19 February 2014 10:12:18 am')})).
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
		value: in) do: [:result | out addAll: result asList]]')})