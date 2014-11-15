reset
updateChildren

	"No need to call this method if never initialized lazily!"
	self assert: groups notNil.

	self clearAllUpdateNotifications.
	self clearAllQueryChangeNotifications.
	self processStepsGuarded.

	self modelReset.