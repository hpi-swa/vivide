as yet unclassified
objectNotifiers

	^ (self valueOfProperty: #notifier ifAbsent: [])
		ifNil: [#()]
		ifNotNil: [:object |
			((ViQueryInterpreter isCollection: object)
				ifTrue: [object] ifFalse: [{object}]) in: [:notifiers |
					notifiers collect: [:notifier |
						notifier isBlock
							ifTrue: [notifier value]
							ifFalse: [notifier new]]]]