as yet unclassified
onEvent: event fromNotifier: notifier inStep: step

	| objects |
	objects := self cachedResults at: step ifAbsent: [#()].

	(objects isEmpty or: [objects anySatisfy: [:object |
		notifier filter value: object value: event]])
			ifTrue: [self refresh].