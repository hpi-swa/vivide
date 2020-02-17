as yet unclassified
onEvent: event fromNotifier: notifier inStep: step

	| objects |
	self flag: #refactor. "mt: Remove this filter if #setUpdateNotifications works as expected."
	objects := self cachedResults at: step ifAbsent: [#()].

	(objects isEmpty or: [objects anySatisfy: [:object |
		notifier filter value: object value: event]])
			ifTrue: [self triggerUpdateChildren].