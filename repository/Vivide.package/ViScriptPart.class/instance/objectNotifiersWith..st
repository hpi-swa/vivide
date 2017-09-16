as yet unclassified
objectNotifiersWith: someObjects
	"Supports notifiers by class, by block, and as lists of the same.
	For example, '... #notifier -> { [:incoming | MyNotifier createWith: incoming]. MyOtherGenericNotifier } ' "
	^ Array streamContents: [:strm |
		(self valueOfProperty: #notifier ifAbsent: [])
			ifNotNil: [:n | n asList do: [:notifier |
				(notifier isBlock
					ifTrue: [notifier numArgs = 0
						ifTrue: [strm nextPut: notifier value]
						ifFalse: [someObjects do: [:o | strm nextPut: (notifier cull: o)]]]
					ifFalse: [strm nextPut: notifier new])]]]