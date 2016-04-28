reset
updateChildren

	| workBlock |
	"No need to call this method if never initialized lazily!"
	self assert: groups notNil.

	workBlock := [
		self clearAllUpdateNotifications.
		self clearAllQueryChangeNotifications.
		self processStepsGuarded.

		self modelReset].

	self pane
		ifNil: [workBlock value]
		ifNotNil: [:p | p beginUpdateChainWith: workBlock].