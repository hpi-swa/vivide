as yet unclassified
nextObjectNotifiers

	^ Array streamContents: [:strm | self nextStepsDo: [:step |
		(step valueOfProperty: #notifier ifAbsent: []) ifNotNil: [:object |
			((ViQueryInterpreter isCollection: object)
				ifTrue: [object] ifFalse: [{object}]) in: [:notifiers |
					notifiers do: [:notifier |
						strm nextPut: (notifier isBlock
							ifTrue: [notifier value]
							ifFalse: [notifier new])]]]]]