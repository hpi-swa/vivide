as yet unclassified
objectNotifiersWith: someObjects

	^ Array streamContents: [:strm |
		(self valueOfProperty: #notifier ifAbsent: [])
			ifNotNil: [:n | n asList do: [:notifier |
				(notifier isBlock
					ifTrue: [notifier numArgs = 0
						ifTrue: [strm nextPut: notifier value]
						ifFalse: [someObjects do: [:o | strm nextPut: (notifier cull: o)]]]
					ifFalse: [strm nextPut: notifier new])]]]