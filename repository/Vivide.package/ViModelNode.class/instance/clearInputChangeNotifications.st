notifications
clearInputChangeNotifications

	self depth > self class updateDepthThreshold ifTrue: [^ self].

	self updateNotifiers do: [:notifier |
		notifier
			disconnectSignal: #notifyEvent: from: self selector: #onEvent:fromNotifier:inStep:;
			unsubscribe].
	self updateNotifiers removeAll.
	
	"Ensure to skip next update."
	updateCount := false.