notifications
setUpdateNotifications

	| refObjects |
	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	self flag: #missing. "mt: What about intermediate objects?"
	refObjects := self inputForChildren.
	
	self firstStep ifNotNil: [:f | f nextStepsDo: [:step |
		self flag: #cachedResults. "mt: Use the results cache to provide the correct objects to each notifier builder."
		"refObjects := self cachedResults at: step ifAbsent: [#()]. -- Beware to remove that fill-step thing first!"

		(step objectNotifiersWith: refObjects) do: [:notifier |
			self updateNotifiers add: notifier.
			notifier subscribe.
			self
				connect: notifier signal: #notifyEvent:
				toSelector: #onEvent:fromNotifier:inStep: pattern: {1. 0. #=. step}]]].