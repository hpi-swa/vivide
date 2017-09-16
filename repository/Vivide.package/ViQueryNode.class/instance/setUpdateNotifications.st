notifications
setUpdateNotifications

	| refObjects |
	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	self firstStep ifNotNil: [:f |
		self flag: #missing. "mt: What about intermediate objects?"
		self flag: #bug. "mt: Use #inputForChildren after cleaning up the fill-step issue: https://github.com/hpi-swa/vivide/issues/211."
		refObjects := f process: #() within: nil.
		
		f nextStepsDo: [:step |
			(step objectNotifiersWith: refObjects) do: [:notifier |
				self updateNotifiers add: notifier.
				notifier subscribe.
				self
					connect: notifier signal: #notifyEvent:
					toSelector: #onEvent:fromNotifier:inStep: pattern: {1. 0. #=. step}]]].