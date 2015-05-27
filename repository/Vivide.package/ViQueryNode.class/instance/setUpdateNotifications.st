notifications
setUpdateNotifications

	self firstStep ifNotNil: [:f |
		f nextStepsDo: [:step |
			step objectNotifiers do: [:notifier |
				self updateNotifiers add: notifier.
				notifier subscribe.
				self
					connect: notifier signal: #notifyEvent:
					toSelector: #onEvent:fromNotifier:inStep: pattern: {1. 0. #=. step}]]].